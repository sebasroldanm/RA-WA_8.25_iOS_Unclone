.class public Lcom/kharis/bom/BoomTextDialog;
.super Landroid/app/AlertDialog$Builder;
.source "BoomTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kharis/bom/BoomTextDialog$100000000;,
        Lcom/kharis/bom/BoomTextDialog$100000001;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    .prologue
    .line 19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    move-object v10, v0

    const-string v11, "Boom Text"

    invoke-virtual {v10, v11}, Lcom/kharis/bom/BoomTextDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 22
    move-object v10, v0

    const-string v11, "Masukkan pesan dan Jumlah yang akan anda kirim"

    invoke-virtual {v10, v11}, Lcom/kharis/bom/BoomTextDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 24
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v10

    .line 25
    move-object v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 27
    new-instance v10, Landroid/widget/LinearLayout;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-virtual {v12}, Lcom/kharis/bom/BoomTextDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v10

    .line 28
    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 29
    move-object v10, v4

    const/16 v11, 0x19

    const/4 v12, 0x0

    const/16 v13, 0x19

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 31
    new-instance v10, Landroid/widget/TextView;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-virtual {v12}, Lcom/kharis/bom/BoomTextDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v5, v10

    .line 32
    move-object v10, v5

    const-string v11, "Pesan :"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v10, Landroid/widget/EditText;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-virtual {v12}, Lcom/kharis/bom/BoomTextDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v6, v10

    .line 36
    move-object v10, v6

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 37
    move-object v10, v6

    const-string v11, "Masukkan Pesan"

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 38
    move-object v10, v6

    move-object v11, v0

    invoke-virtual {v11}, Lcom/kharis/bom/BoomTextDialog;->setBoomText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    move-object v10, v6

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    move-object v10, v6

    new-instance v11, Lcom/kharis/bom/BoomTextDialog$100000000;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/kharis/bom/BoomTextDialog$100000000;-><init>(Lcom/kharis/bom/BoomTextDialog;)V

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    new-instance v10, Landroid/widget/TextView;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-virtual {v12}, Lcom/kharis/bom/BoomTextDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v7, v10

    .line 63
    move-object v10, v7

    const-string v11, "Jumlah :"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v10, Landroid/widget/EditText;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-virtual {v12}, Lcom/kharis/bom/BoomTextDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v8, v10

    .line 67
    move-object v10, v8

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 68
    move-object v10, v8

    const-string v11, "Masukkan Jumlah"

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 69
    move-object v10, v8

    move-object v11, v0

    invoke-virtual {v11}, Lcom/kharis/bom/BoomTextDialog;->setBoomCount()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    move-object v10, v8

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    move-object v10, v8

    new-instance v11, Lcom/kharis/bom/BoomTextDialog$100000001;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/kharis/bom/BoomTextDialog$100000001;-><init>(Lcom/kharis/bom/BoomTextDialog;)V

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    move-object v10, v4

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    move-object v10, v4

    move-object v11, v6

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    move-object v10, v4

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    move-object v10, v4

    move-object v11, v8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v10, v11}, Lcom/kharis/bom/BoomTextDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    return-void
.end method


# virtual methods
.method public setBoomCount()Ljava/lang/String;
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/kharis/bom/BoomTextDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v2, v4

    .line 109
    move-object v4, v2

    const-string v5, "nami_boom_count"

    const-string v6, "5"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public setBoomText()Ljava/lang/String;
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/kharis/bom/BoomTextDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v2, v4

    .line 103
    move-object v4, v2

    const-string v5, "nami_boom_text"

    const-string v6, "PING!!!"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method
