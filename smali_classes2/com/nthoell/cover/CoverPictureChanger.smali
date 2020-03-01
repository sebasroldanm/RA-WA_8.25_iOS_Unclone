.class public Lcom/nthoell/cover/CoverPictureChanger;
.super Landroid/app/Activity;
.source "CoverPictureChanger.java"


# instance fields
.field coverImage:Landroid/widget/ImageView;

.field pf1:Landroid/content/SharedPreferences;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private pilihCover()V
    .locals 6

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Cover Picture"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Reset To Default Cover"

    aput-object v5, v3, v4

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090011

    invoke-direct {v0, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Select Image For Cover"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/nthoell/cover/CoverPictureChanger$1;

    invoke-direct {v4, p0}, Lcom/nthoell/cover/CoverPictureChanger$1;-><init>(Lcom/nthoell/cover/CoverPictureChanger;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/nthoell/cover/CoverPictureChanger;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nthoell/cover/CoverPictureChanger;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public goHome(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-class p1, Lcom/whatsapp/HomeActivity;

    invoke-static {p1, p0}, Lcom/whatsapp/HomeActivity;->ActionView(Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method public goProf(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-class p1, Lcom/whatsapp/profile/ProfileInfoActivity;

    invoke-static {p1, p0}, Lcom/whatsapp/HomeActivity;->ActionView(Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/nthoell/cover/CoverPictureChanger;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/nthoell/cover/CoverPictureChanger;->coverImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nthoell/cover/CoverPictureChanger;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    const-string v2, "Cover"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/nthoell/cover/CoverPictureChanger;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "coverImage"

    iget-object v3, p0, Lcom/nthoell/cover/CoverPictureChanger;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "COVER_IMAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "COVERkey"

    iget-object v3, p0, Lcom/nthoell/cover/CoverPictureChanger;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/nthoell/cover/CoverPictureChanger;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/nthoell/cover/CoverPictureChanger;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ra_change_cover"

    const-string v1, "layout"

    invoke-virtual {p0, v0, v1}, Lcom/nthoell/cover/CoverPictureChanger;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nthoell/cover/CoverPictureChanger;->setContentView(I)V

    const-string v0, "cover_change"

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Lcom/nthoell/cover/CoverPictureChanger;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nthoell/cover/CoverPictureChanger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nthoell/cover/CoverPictureChanger;->coverImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/nthoell/cover/CoverPictureChanger;->pilihCover()V

    return-void
.end method
