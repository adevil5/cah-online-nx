export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export interface Database {
  graphql_public: {
    Tables: {
      [_ in never]: never
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      graphql: {
        Args: {
          operationName?: string
          query?: string
          variables?: Json
          extensions?: Json
        }
        Returns: Json
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
  public: {
    Tables: {
      cards: {
        Row: {
          card_id: string
          created_at: string
          deck_id: string
          pick: number | null
          text: string
          type: Database["public"]["Enums"]["card_type_enum"]
        }
        Insert: {
          card_id?: string
          created_at?: string
          deck_id: string
          pick?: number | null
          text: string
          type: Database["public"]["Enums"]["card_type_enum"]
        }
        Update: {
          card_id?: string
          created_at?: string
          deck_id?: string
          pick?: number | null
          text?: string
          type?: Database["public"]["Enums"]["card_type_enum"]
        }
        Relationships: [
          {
            foreignKeyName: "cards_deck_id_fkey"
            columns: ["deck_id"]
            isOneToOne: false
            referencedRelation: "decks"
            referencedColumns: ["deck_id"]
          }
        ]
      }
      decks: {
        Row: {
          deck_id: string
          name: string
          official: boolean | null
        }
        Insert: {
          deck_id?: string
          name: string
          official?: boolean | null
        }
        Update: {
          deck_id?: string
          name?: string
          official?: boolean | null
        }
        Relationships: []
      }
      game_cards: {
        Row: {
          card_id: string
          created_at: string
          game_card_id: string
          game_id: string
          is_played: boolean | null
          user_id: string | null
        }
        Insert: {
          card_id: string
          created_at?: string
          game_card_id?: string
          game_id: string
          is_played?: boolean | null
          user_id?: string | null
        }
        Update: {
          card_id?: string
          created_at?: string
          game_card_id?: string
          game_id?: string
          is_played?: boolean | null
          user_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "game_cards_card_id_fkey"
            columns: ["card_id"]
            isOneToOne: false
            referencedRelation: "cards"
            referencedColumns: ["card_id"]
          },
          {
            foreignKeyName: "game_cards_game_id_fkey"
            columns: ["game_id"]
            isOneToOne: false
            referencedRelation: "game_sessions"
            referencedColumns: ["game_id"]
          },
          {
            foreignKeyName: "game_cards_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          }
        ]
      }
      game_sessions: {
        Row: {
          created_at: string
          game_code: string
          game_id: string
          game_state: Database["public"]["Enums"]["game_state_enum"]
          host_user_id: string
          rando_cardrissian: boolean
          score_limit: number
        }
        Insert: {
          created_at?: string
          game_code: string
          game_id?: string
          game_state?: Database["public"]["Enums"]["game_state_enum"]
          host_user_id: string
          rando_cardrissian?: boolean
          score_limit?: number
        }
        Update: {
          created_at?: string
          game_code?: string
          game_id?: string
          game_state?: Database["public"]["Enums"]["game_state_enum"]
          host_user_id?: string
          rando_cardrissian?: boolean
          score_limit?: number
        }
        Relationships: [
          {
            foreignKeyName: "game_sessions_host_user_id_fkey"
            columns: ["host_user_id"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          }
        ]
      }
      player_sessions: {
        Row: {
          game_id: string
          user_id: string
        }
        Insert: {
          game_id: string
          user_id: string
        }
        Update: {
          game_id?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "player_sessions_game_id_fkey"
            columns: ["game_id"]
            isOneToOne: false
            referencedRelation: "game_sessions"
            referencedColumns: ["game_id"]
          },
          {
            foreignKeyName: "player_sessions_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          }
        ]
      }
      players: {
        Row: {
          created_at: string
          user_id: string
          username: string
        }
        Insert: {
          created_at?: string
          user_id: string
          username: string
        }
        Update: {
          created_at?: string
          user_id?: string
          username?: string
        }
        Relationships: [
          {
            foreignKeyName: "players_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: true
            referencedRelation: "users"
            referencedColumns: ["id"]
          }
        ]
      }
      response_cards: {
        Row: {
          card_id: string
          created_at: string
          response_id: string
          response_order: number
        }
        Insert: {
          card_id: string
          created_at?: string
          response_id: string
          response_order: number
        }
        Update: {
          card_id?: string
          created_at?: string
          response_id?: string
          response_order?: number
        }
        Relationships: [
          {
            foreignKeyName: "response_cards_card_id_fkey"
            columns: ["card_id"]
            isOneToOne: false
            referencedRelation: "cards"
            referencedColumns: ["card_id"]
          },
          {
            foreignKeyName: "response_cards_response_id_fkey"
            columns: ["response_id"]
            isOneToOne: false
            referencedRelation: "responses"
            referencedColumns: ["response_id"]
          }
        ]
      }
      responses: {
        Row: {
          created_at: string
          response_id: string
          round_id: string
          user_id: string
        }
        Insert: {
          created_at?: string
          response_id?: string
          round_id: string
          user_id: string
        }
        Update: {
          created_at?: string
          response_id?: string
          round_id?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "responses_round_id_fkey"
            columns: ["round_id"]
            isOneToOne: false
            referencedRelation: "rounds"
            referencedColumns: ["round_id"]
          },
          {
            foreignKeyName: "responses_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          }
        ]
      }
      rounds: {
        Row: {
          created_at: string
          current_black_card_id: string
          czar_user_id: string
          game_id: string
          round_id: string
          round_number: number
          round_phase: Database["public"]["Enums"]["round_phase_enum"]
          winning_response_id: string | null
        }
        Insert: {
          created_at?: string
          current_black_card_id: string
          czar_user_id: string
          game_id: string
          round_id?: string
          round_number: number
          round_phase?: Database["public"]["Enums"]["round_phase_enum"]
          winning_response_id?: string | null
        }
        Update: {
          created_at?: string
          current_black_card_id?: string
          czar_user_id?: string
          game_id?: string
          round_id?: string
          round_number?: number
          round_phase?: Database["public"]["Enums"]["round_phase_enum"]
          winning_response_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "rounds_current_black_card_id_fkey"
            columns: ["current_black_card_id"]
            isOneToOne: false
            referencedRelation: "cards"
            referencedColumns: ["card_id"]
          },
          {
            foreignKeyName: "rounds_czar_user_id_fkey"
            columns: ["czar_user_id"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "rounds_game_id_fkey"
            columns: ["game_id"]
            isOneToOne: false
            referencedRelation: "game_sessions"
            referencedColumns: ["game_id"]
          },
          {
            foreignKeyName: "rounds_winning_response_id_fkey"
            columns: ["winning_response_id"]
            isOneToOne: false
            referencedRelation: "responses"
            referencedColumns: ["response_id"]
          }
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      card_type_enum: "black" | "white"
      game_state_enum: "lobby" | "in_progress" | "completed"
      round_phase_enum: "waiting_for_responses" | "judging" | "completed"
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
  storage: {
    Tables: {
      buckets: {
        Row: {
          allowed_mime_types: string[] | null
          avif_autodetection: boolean | null
          created_at: string | null
          file_size_limit: number | null
          id: string
          name: string
          owner: string | null
          owner_id: string | null
          public: boolean | null
          updated_at: string | null
        }
        Insert: {
          allowed_mime_types?: string[] | null
          avif_autodetection?: boolean | null
          created_at?: string | null
          file_size_limit?: number | null
          id: string
          name: string
          owner?: string | null
          owner_id?: string | null
          public?: boolean | null
          updated_at?: string | null
        }
        Update: {
          allowed_mime_types?: string[] | null
          avif_autodetection?: boolean | null
          created_at?: string | null
          file_size_limit?: number | null
          id?: string
          name?: string
          owner?: string | null
          owner_id?: string | null
          public?: boolean | null
          updated_at?: string | null
        }
        Relationships: []
      }
      migrations: {
        Row: {
          executed_at: string | null
          hash: string
          id: number
          name: string
        }
        Insert: {
          executed_at?: string | null
          hash: string
          id: number
          name: string
        }
        Update: {
          executed_at?: string | null
          hash?: string
          id?: number
          name?: string
        }
        Relationships: []
      }
      objects: {
        Row: {
          bucket_id: string | null
          created_at: string | null
          id: string
          last_accessed_at: string | null
          metadata: Json | null
          name: string | null
          owner: string | null
          owner_id: string | null
          path_tokens: string[] | null
          updated_at: string | null
          version: string | null
        }
        Insert: {
          bucket_id?: string | null
          created_at?: string | null
          id?: string
          last_accessed_at?: string | null
          metadata?: Json | null
          name?: string | null
          owner?: string | null
          owner_id?: string | null
          path_tokens?: string[] | null
          updated_at?: string | null
          version?: string | null
        }
        Update: {
          bucket_id?: string | null
          created_at?: string | null
          id?: string
          last_accessed_at?: string | null
          metadata?: Json | null
          name?: string | null
          owner?: string | null
          owner_id?: string | null
          path_tokens?: string[] | null
          updated_at?: string | null
          version?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "objects_bucketId_fkey"
            columns: ["bucket_id"]
            isOneToOne: false
            referencedRelation: "buckets"
            referencedColumns: ["id"]
          }
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      can_insert_object: {
        Args: {
          bucketid: string
          name: string
          owner: string
          metadata: Json
        }
        Returns: undefined
      }
      extension: {
        Args: {
          name: string
        }
        Returns: string
      }
      filename: {
        Args: {
          name: string
        }
        Returns: string
      }
      foldername: {
        Args: {
          name: string
        }
        Returns: unknown
      }
      get_size_by_bucket: {
        Args: Record<PropertyKey, never>
        Returns: {
          size: number
          bucket_id: string
        }[]
      }
      search: {
        Args: {
          prefix: string
          bucketname: string
          limits?: number
          levels?: number
          offsets?: number
          search?: string
          sortcolumn?: string
          sortorder?: string
        }
        Returns: {
          name: string
          id: string
          updated_at: string
          created_at: string
          last_accessed_at: string
          metadata: Json
        }[]
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

export type Tables<
  PublicTableNameOrOptions extends
    | keyof (Database["public"]["Tables"] & Database["public"]["Views"])
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
        Database[PublicTableNameOrOptions["schema"]]["Views"])
    : never = never
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
      Database[PublicTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : PublicTableNameOrOptions extends keyof (Database["public"]["Tables"] &
      Database["public"]["Views"])
  ? (Database["public"]["Tables"] &
      Database["public"]["Views"])[PublicTableNameOrOptions] extends {
      Row: infer R
    }
    ? R
    : never
  : never

export type TablesInsert<
  PublicTableNameOrOptions extends
    | keyof Database["public"]["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : PublicTableNameOrOptions extends keyof Database["public"]["Tables"]
  ? Database["public"]["Tables"][PublicTableNameOrOptions] extends {
      Insert: infer I
    }
    ? I
    : never
  : never

export type TablesUpdate<
  PublicTableNameOrOptions extends
    | keyof Database["public"]["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : PublicTableNameOrOptions extends keyof Database["public"]["Tables"]
  ? Database["public"]["Tables"][PublicTableNameOrOptions] extends {
      Update: infer U
    }
    ? U
    : never
  : never

export type Enums<
  PublicEnumNameOrOptions extends
    | keyof Database["public"]["Enums"]
    | { schema: keyof Database },
  EnumName extends PublicEnumNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicEnumNameOrOptions["schema"]]["Enums"]
    : never = never
> = PublicEnumNameOrOptions extends { schema: keyof Database }
  ? Database[PublicEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : PublicEnumNameOrOptions extends keyof Database["public"]["Enums"]
  ? Database["public"]["Enums"][PublicEnumNameOrOptions]
  : never

