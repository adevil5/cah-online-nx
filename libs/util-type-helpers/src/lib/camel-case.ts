type SnakeToCamelCase<S extends string> =
  S extends `${infer T}_${infer U}${infer Rest}`
    ? `${T}${Capitalize<SnakeToCamelCase<`${U}${Rest}`>>}`
    : S;

export type CamelCase<T> = {
  [K in keyof T as SnakeToCamelCase<K & string>]: T[K] extends object
    ? CamelCase<T[K]>
    : T[K];
};

function toCamelCase(str: string): string {
  return str.replace(/([-_][a-z])/gi, ($1) => {
    return $1.toUpperCase().replace('-', '').replace('_', '');
  });
}

type ObjectLiteral = Record<string, unknown>;

export function convertToCamelCase<T extends ObjectLiteral>(
  obj: T
): CamelCase<T> {
  return Object.entries(obj).reduce((newObj, [key, value]) => {
    const newKey = toCamelCase(key);

    let newValue: unknown;

    if (typeof value === 'object' && value !== null) {
      newValue = Array.isArray(value)
        ? value.map((item) =>
            typeof item === 'object'
              ? convertToCamelCase(item as ObjectLiteral)
              : item
          )
        : convertToCamelCase(value as ObjectLiteral);
    } else {
      newValue = value;
    }

    return {
      ...newObj,
      [newKey]: newValue,
    };
  }, {} as CamelCase<T>);
}
