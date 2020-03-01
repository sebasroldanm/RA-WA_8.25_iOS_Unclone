.class Lcom/nthoell/cover/tools/TTR$7;
.super Ljava/lang/Object;
.source "TTR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nthoell/cover/tools/TTR;->Hide(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nthoell/cover/tools/TTR;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nthoell/cover/tools/TTR;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nthoell/cover/tools/TTR$7;->this$0:Lcom/nthoell/cover/tools/TTR;

    iput-object p2, p0, Lcom/nthoell/cover/tools/TTR$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nthoell/cover/tools/TTR$7;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
