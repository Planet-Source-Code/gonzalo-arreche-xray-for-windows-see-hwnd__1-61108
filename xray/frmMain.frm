VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   1365
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   1185
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1365
   ScaleWidth      =   1185
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "see"
      Height          =   345
      Left            =   120
      TabIndex        =   0
      Top             =   900
      Width           =   1024
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Declare Function WindowFromPoint Lib "user32" (ByVal xPoint As Long, ByVal yPoint As Long) As Long

Private Sub see()
    Dim X As Long
    Dim Y As Long
    Dim hWnd As Long
    For Y = 0 To 768 Step 15
        For X = 0 To 1024 Step 15
            hWnd = WindowFromPoint(X, Y)
            hWnd = hWnd / 16
            PSet (X, Y), hWnd 'RGB(hWnd + 10, hWnd, hWnd / 2)
        Next X
    Next Y
End Sub

Private Sub Command1_Click()
    Call see
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub
