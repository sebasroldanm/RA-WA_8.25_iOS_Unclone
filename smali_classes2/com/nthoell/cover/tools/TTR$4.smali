.class Lcom/nthoell/cover/tools/TTR$4;
.super Ljava/lang/Object;
.source "TTR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nthoell/cover/tools/TTR;->ShowProgressDLG(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/nthoell/cover/tools/TTR$4;->this$0:Lcom/nthoell/cover/tools/TTR;

    iput-object p2, p0, Lcom/nthoell/cover/tools/TTR$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/nthoell/cover/tools/TTR$4;->this$0:Lcom/nthoell/cover/tools/TTR;

    iget-object v1, p0, Lcom/nthoell/cover/tools/TTR$4;->this$0:Lcom/nthoell/cover/tools/TTR;

    invoke-static {v1}, Lcom/nthoell/cover/tools/TTR;->access$000(Lcom/nthoell/cover/tools/TTR;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/nthoell/cover/tools/TTR$4;->val$message:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nthoell/cover/tools/TTR;->access$102(Lcom/nthoell/cover/tools/TTR;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
