package com.example.myapplication;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    EditText edt_user, edt_senha;
    Button btn_login;

    String login = "Matheus";
    String senha = "1234";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        edt_user = findViewById(R.id.edt_user);
        edt_senha = findViewById(R.id.edt_senha);
        btn_login = findViewById(R.id.btn_login);

    }

    public void login(View v){
        String login_user = String.valueOf(edt_user.getText());
        String senha_user = String.valueOf(edt_senha.getText());

        if (login_user.equals(login) && senha_user.equals(senha)) {
            Intent abrir_tela = new Intent(this, menu.class);
            startActivity(abrir_tela);
            finish();
        }

        else {
            AlertDialog.Builder cxMsg = new AlertDialog.Builder(this);
            cxMsg.setMessage("Usuário ou senha incorreta");
            cxMsg.setNeutralButton("OK", null);
            cxMsg.show();
        }

    }

}
