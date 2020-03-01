.class Lcom/nthoell/cover/KenBurnsView$2;
.super Landroid/content/BroadcastReceiver;
.source "KenBurnsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nthoell/cover/KenBurnsView;->setCoverImage(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nthoell/cover/KenBurnsView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/nthoell/cover/KenBurnsView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nthoell/cover/KenBurnsView$2;->this$0:Lcom/nthoell/cover/KenBurnsView;

    iput-object p2, p0, Lcom/nthoell/cover/KenBurnsView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView$2;->this$0:Lcom/nthoell/cover/KenBurnsView;

    const-string v2, "COVERkey"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nthoell/cover/KenBurnsView;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView$2;->this$0:Lcom/nthoell/cover/KenBurnsView;

    iget-object v1, v1, Lcom/nthoell/cover/KenBurnsView;->coverImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nthoell/cover/KenBurnsView$2;->this$0:Lcom/nthoell/cover/KenBurnsView;

    iget-object v2, v2, Lcom/nthoell/cover/KenBurnsView;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView$2;->val$context:Landroid/content/Context;

    const-string v2, "Cover"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "coverImage"

    iget-object v2, p0, Lcom/nthoell/cover/KenBurnsView$2;->this$0:Lcom/nthoell/cover/KenBurnsView;

    iget-object v2, v2, Lcom/nthoell/cover/KenBurnsView;->uri:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
