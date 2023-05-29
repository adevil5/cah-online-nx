export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json }
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
      }
      game: {
        Row: {
          created_at: string
          game_deck_id: string
          host_user_id: string
          id: string
          state: string
          updated_at: string
        }
        Insert: {
          created_at?: string
          game_deck_id: string
          host_user_id: string
          id?: string
          state?: string
          updated_at?: string
        }
        Update: {
          created_at?: string
          game_deck_id?: string
          host_user_id?: string
          id?: string
          state?: string
          updated_at?: string
        }
      }
      game_deck: {
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
          winning_card_id: string | null
          winning_user_id: string | null
        }
        Insert: {
          black_card_id: string
          created_at?: string
          czar_user_id?: string | null
          game_id: string
          game_round_number?: number
          id?: string
          updated_at?: string
          winning_card_id?: string | null
          winning_user_id?: string | null
        }
        Update: {
          black_card_id?: string
          created_at?: string
          czar_user_id?: string | null
          game_id?: string
          game_round_number?: number
          id?: string
          updated_at?: string
          winning_card_id?: string | null
          winning_user_id?: string | null
        }
      }
      profile: {
        Row: {
          avatar_url: string | null
          full_name: string | null
          id: string
          updated_at: string | null
          username: string | null
          website: string | null
        }
        Insert: {
          avatar_url?: string | null
          full_name?: string | null
          id: string
          updated_at?: string | null
          username?: string | null
          website?: string | null
        }
        Update: {
          avatar_url?: string | null
          full_name?: string | null
          id?: string
          updated_at?: string | null
          username?: string | null
          website?: string | null
        }
      }
      user_game: {
        Row: {
          created_at: string
          game_id: string
          id: string
          score: number
          updated_at: string
          user_id: string
        }
        Insert: {
          created_at?: string
          game_id: string
          id?: string
          score?: number
          updated_at?: string
          user_id: string
        }
        Update: {
          created_at?: string
          game_id?: string
          id?: string
          score?: number
          updated_at?: string
          user_id?: string
        }
      }
      user_game_round: {
        Row: {
          created_at: string
          game_round_id: string
          id: string
          played_card_id: string | null
          updated_at: string
          user_id: string
        }
        Insert: {
          created_at?: string
          game_round_id: string
          id?: string
          played_card_id?: string | null
          updated_at?: string
          user_id: string
        }
        Update: {
          created_at?: string
          game_round_id?: string
          id?: string
          played_card_id?: string | null
          updated_at?: string
          user_id?: string
        }
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
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
