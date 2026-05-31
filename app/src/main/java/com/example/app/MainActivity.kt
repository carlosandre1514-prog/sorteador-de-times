package com.example.kbcsorteios

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState) 
        setContent {
            MaterialTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    KbcSorteiosMainScreen()
                }
            }
        }
    }
}

@Composable
fun KbcSorteiosMainScreen() {
    Column(modifier = Modifier.padding(16.dp)) {
        Text(
            text = "kbc-Sorteios",
            style = MaterialTheme.typography.headlineMedium
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = "Sorteador Inteligente de Times com Nível por Estrelas e Cronômetro com Alarme.",
            style = MaterialTheme.typography.bodyLarge
        )
    }
}