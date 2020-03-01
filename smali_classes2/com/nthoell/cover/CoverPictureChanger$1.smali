.class Lcom/nthoell/cover/CoverPictureChanger$1;
.super Ljava/lang/Object;
.source "CoverPictureChanger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nthoell/cover/CoverPictureChanger;->pilihCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nthoell/cover/CoverPictureChanger;


# direct methods
.method constructor <init>(Lcom/nthoell/cover/CoverPictureChanger;)V
    .locals 0

    iput-object p1, p0, Lcom/nthoell/cover/CoverPictureChanger$1;->this$0:Lcom/nthoell/cover/CoverPictureChanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v4, 0x1

    if-nez p2, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/nthoell/cover/CoverPictureChanger$1;->this$0:Lcom/nthoell/cover/CoverPictureChanger;

    const-string v3, "Select Picture"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/nthoell/cover/CoverPictureChanger;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void

    :cond_1
    if-ne p2, v4, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/nthoell/cover/CoverPictureChanger$1;->this$0:Lcom/nthoell/cover/CoverPictureChanger;

    iget-object v3, p0, Lcom/nthoell/cover/CoverPictureChanger$1;->this$0:Lcom/nthoell/cover/CoverPictureChanger;

    const-string v4, "Cover"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/nthoell/cover/CoverPictureChanger;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v2, Lcom/nthoell/cover/CoverPictureChanger;->pf1:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/nthoell/cover/CoverPictureChanger$1;->this$0:Lcom/nthoell/cover/CoverPictureChanger;

    iget-object v2, v2, Lcom/nthoell/cover/CoverPictureChanger;->pf1:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
