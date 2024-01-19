type CamelToSnakeCase<S extends string> = S extends `${infer T}${infer Rest}`
  ? T extends Capitalize<T>
    ? `_${Lowercase<T>}${CamelToSnakeCase<Rest>}`
    : `${T}${CamelToSnakeCase<Rest>}`
  : S;

export type SnakeCase<T> = {
  [K in keyof T as CamelToSnakeCase<K & string>]: T[K] extends object
    ? SnakeCase<T[K]>
    : T[K];
};

function toSnakeCase(str: string): string {
  return str.replace(/[A-Z]/g, (letter) => `_${letter.toLowerCase()}`);
}

type ObjectLiteral = Record<string, unknown>;

export function convertToSnakeCase<T extends ObjectLiteral>(
  obj: T
): SnakeCase<T> {
  return Object.entries(obj).reduce((newObj, [key, value]) => {
    const newKey = toSnakeCase(key);

    let newValue: unknown;

    if (typeof value === 'object' && value !== null) {
      newValue = Array.isArray(value)
        ? value.map((item) =>
            typeof item === 'object'
              ? convertToSnakeCase(item as ObjectLiteral)
              : item
          )
        : convertToSnakeCase(value as ObjectLiteral);
    } else {
      newValue = value;
    }

    return {
      ...newObj,
      [newKey]: newValue,
    };
  }, {} as SnakeCase<T>);
}
