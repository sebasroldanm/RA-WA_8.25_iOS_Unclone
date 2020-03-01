.class Lcom/nthoell/cover/tools/TTR$8;
.super Ljava/lang/Object;
.source "TTR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nthoell/cover/tools/TTR;->ShowMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nthoell/cover/tools/TTR;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nthoell/cover/tools/TTR;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nthoell/cover/tools/TTR$8;->this$0:Lcom/nthoell/cover/tools/TTR;

    iput-object p2, p0, Lcom/nthoell/cover/tools/TTR$8;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nthoell/cover/tools/TTR$8;->this$0:Lcom/nthoell/cover/tools/TTR;

    invoke-static {v1}, Lcom/nthoell/cover/tools/TTR;->access$000(Lcom/nthoell/cover/tools/TTR;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nthoell/cover/tools/TTR$8;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
