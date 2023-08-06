export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export interface Database {
  public: {
    Tables: {
      card: {
        Row: {
          card_pack_id: string | null
          id: string
          is_white_card: boolean
          pick_count: number | null
          text: string
        }
        Insert: {
          card_pack_id?: string | null
          id?: string
          is_white_card: boolean
          pick_count?: number | null
          text: string
        }
        Update: {
          card_pack_id?: string | null
          id?: string
          is_white_card?: boolean
          pick_count?: number | null
          text?: string
        }
        Relationships: [
          {
            foreignKeyName: "card_card_pack_id_fkey"
            columns: ["card_pack_id"]
            referencedRelation: "card_pack"
            referencedColumns: ["id"]
          }
        ]
      }
      card_pack: {
        Row: {
          id: string
          is_official: boolean
          name: string
        }
        Insert: {
          id?: string
          is_official: boolean
          name: string
        }
        Update: {
          id?: string
          is_official?: boolean
          name?: string
        }
        Relationships: []
      }
      game: {
        Row: {
          created_at: string
          current_round_id: string | null
          enable_ghost_player: boolean
          game_deck_id: string
          host_user_id: string
          id: string
          state: string
          updated_at: string
        }
        Insert: {
          created_at?: string
          current_round_id?: string | null
          enable_ghost_player?: boolean
          game_deck_id: string
          host_user_id: string
          id?: string
          state?: string
          updated_at?: string
        }
        Update: {
          created_at?: string
          current_round_id?: string | null
          enable_ghost_player?: boolean
          game_deck_id?: string
          host_user_id?: string
          id?: string
          state?: string
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "game_current_round_id_fkey"
            columns: ["current_round_id"]
            referencedRelation: "game_round"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "game_host_user_id_fkey"
            columns: ["host_user_id"]
            referencedRelation: "profile"
            referencedColumns: ["id"]
          }
        ]
      }
      game_card: {
        Row: {
          card_id: string
          card_location: string
          card_owner_id: string | null
          created_at: string
          game_id: string
          id: string
          updated_at: string
        }
        Insert: {
          card_id: string
          card_location?: string
          card_owner_id?: string | null
          created_at?: string
          game_id: string
          id?: string
          updated_at?: string
        }
        Update: {
          card_id?: string
          card_location?: string
          card_owner_id?: string | null
          created_at?: string
          game_id?: string
          id?: string
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "game_card_card_id_fkey"
            columns: ["card_id"]
            referencedRelation: "card"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "game_card_card_owner_id_fkey"
            columns: ["card_owner_id"]
            referencedRelation: "profile"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "game_card_game_id_fkey"
            columns: ["game_id"]
            referencedRelation: "game"
            referencedColumns: ["id"]
          }
        ]
      }
      game_round: {
        Row: {
          black_card_id: string
          created_at: string
          czar_user_id: string | null
          game_id: string
          game_round_number: number
          id: string
          updated_at: string
          winning_user_game_id: string | null
        }
        Insert: {
          black_card_id: string
          created_at?: string
          czar_user_id?: string | null
          game_id: string
          game_round_number?: number
          id?: string
          updated_at?: string
          winning_user_game_id?: string | null
        }
        Update: {
          black_card_id?: string
          created_at?: string
          czar_user_id?: string | null
          game_id?: string
          game_round_number?: number
          id?: string
          updated_at?: string
          winning_user_game_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "game_round_black_card_id_fkey"
            columns: ["black_card_id"]
            referencedRelation: "card"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "game_round_czar_user_id_fkey"
            columns: ["czar_user_id"]
            referencedRelation: "profile"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "game_round_game_id_fkey"
            columns: ["game_id"]
            referencedRelation: "game"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "game_round_winning_user_game_id_fkey"
            columns: ["winning_user_game_id"]
            referencedRelation: "user_game"
            referencedColumns: ["id"]
          }
        ]
      }
      profile: {
        Row: {
          avatar_url: string | null
          id: string
          updated_at: string
          username: string | null
        }
        Insert: {
          avatar_url?: string | null
          id: string
          updated_at?: string
          username?: string | null
        }
        Update: {
          avatar_url?: string | null
          id?: string
          updated_at?: string
          username?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "profile_id_fkey"
            columns: ["id"]
            referencedRelation: "users"
            referencedColumns: ["id"]
          }
        ]
      }
      user_game: {
        Row: {
          created_at: string
          enable_autoplay: boolean
          game_id: string
          id: string
          updated_at: string
          user_id: string
        }
        Insert: {
          created_at?: string
          enable_autoplay?: boolean
          game_id: string
          id?: string
          updated_at?: string
          user_id: string
        }
        Update: {
          created_at?: string
          enable_autoplay?: boolean
          game_id?: string
          id?: string
          updated_at?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "user_game_game_id_fkey"
            columns: ["game_id"]
            referencedRelation: "game"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "user_game_user_id_fkey"
            columns: ["user_id"]
            referencedRelation: "profile"
            referencedColumns: ["id"]
          }
        ]
      }
      user_game_round_card: {
        Row: {
          created_at: string
          game_round_id: string
          id: string
          played_card_id: string | null
          played_card_order: number
          updated_at: string
          user_game_id: string
        }
        Insert: {
          created_at?: string
          game_round_id: string
          id?: string
          played_card_id?: string | null
          played_card_order?: number
          updated_at?: string
          user_game_id: string
        }
        Update: {
          created_at?: string
          game_round_id?: string
          id?: string
          played_card_id?: string | null
          played_card_order?: number
          updated_at?: string
          user_game_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "user_game_round_card_game_round_id_fkey"
            columns: ["game_round_id"]
            referencedRelation: "game_round"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "user_game_round_card_played_card_id_fkey"
            columns: ["played_card_id"]
            referencedRelation: "card"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "user_game_round_card_user_game_id_fkey"
            columns: ["user_game_id"]
            referencedRelation: "user_game"
            referencedColumns: ["id"]
          }
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      delete_avatar: {
        Args: {
          avatar_url: string
        }
        Returns: Record<string, unknown>
      }
      delete_storage_object: {
        Args: {
          bucket: string
          object: string
        }
        Returns: Record<string, unknown>
      }
      get_random_cards: {
        Args: {
          n: number
          is_white_card?: boolean
        }
        Returns: {
          card_pack_id: string | null
          id: string
          is_white_card: boolean
          pick_count: number | null
          text: string
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

