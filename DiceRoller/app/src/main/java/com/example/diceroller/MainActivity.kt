package com.example.diceroller

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val rollButton: Button = findViewById(R.id.button)
        rollButton.setOnClickListener {
                      rollDice()
                        }
            rollDice()
    }
// roll the dice and update the screen result
    private fun rollDice() {
    // create a object instance
        val dice = Dice(6)
    // call the roll() function
        val diceRoll = dice.roll()
    // find the image view in the layout
        val diceImage: ImageView = findViewById(R.id.imageView)
    /* determine the dice number */
        val drawableResource  =   when (diceRoll) {

            1 -> (R.drawable.dice_1)
            2 -> (R.drawable.dice_2)
            3 -> (R.drawable.dice_3)
            4 -> (R.drawable.dice_4)
            5 -> (R.drawable.dice_5)
            else -> (R.drawable.dice_6)

        }
        //update the image view with the correct resource ID
            diceImage.setImageResource(drawableResource)
        //update the content description
            diceImage.contentDescription = diceRoll.toString()



    }
}


class Dice(val numSides: Int) {

    fun roll(): Int {
        return (1..6).random()
    }
}

