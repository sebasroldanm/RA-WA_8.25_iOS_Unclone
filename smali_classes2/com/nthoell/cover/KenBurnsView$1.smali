.class Lcom/nthoell/cover/KenBurnsView$1;
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

    iput-object p1, p0, Lcom/nthoell/cover/KenBurnsView$1;->this$0:Lcom/nthoell/cover/KenBurnsView;

    iput-object p2, p0, Lcom/nthoell/cover/KenBurnsView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView$1;->val$context:Landroid/content/Context;

    const-string v2, "Cover"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView$1;->this$0:Lcom/nthoell/cover/KenBurnsView;

    const-string v2, "coverImage"

    const-string v3, "null"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nthoell/cover/KenBurnsView;->coverUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView$1;->this$0:Lcom/nthoell/cover/KenBurnsView;

    iget-object v1, v1, Lcom/nthoell/cover/KenBurnsView;->coverUri:Ljava/lang/String;

    const-string v2, "null"

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView$1;->this$0:Lcom/nthoell/cover/KenBurnsView;

    iget-object v1, v1, Lcom/nthoell/cover/KenBurnsView;->coverImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nthoell/cover/KenBurnsView$1;->this$0:Lcom/nthoell/cover/KenBurnsView;

    const-string v3, "ra_cover"

    const-string v4, "drawable"

    invoke-virtual {v2, v3, v4}, Lcom/nthoell/cover/KenBurnsView;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView$1;->this$0:Lcom/nthoell/cover/KenBurnsView;

    iget-object v1, v1, Lcom/nthoell/cover/KenBurnsView;->coverImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nthoell/cover/KenBurnsView$1;->this$0:Lcom/nthoell/cover/KenBurnsView;

    iget-object v2, v2, Lcom/nthoell/cover/KenBurnsView;->coverUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method
