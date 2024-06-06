//
//  Supabase.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-04.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
  supabaseURL: URL(string: "https://fosalaujbksvhelafhrr.supabase.co")!,
  supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZvc2FsYXVqYmtzdmhlbGFmaHJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTcxODA3NjUsImV4cCI6MjAzMjc1Njc2NX0.NM5EVak4bsO1QaqavUbxyf4xvVyPLXpfUOtsim1HDv8"
)
