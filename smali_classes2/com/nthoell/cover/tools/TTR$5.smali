.class Lcom/nthoell/cover/tools/TTR$5;
.super Ljava/lang/Object;
.source "TTR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nthoell/cover/tools/TTR;->CloseProgressDLG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nthoell/cover/tools/TTR;


# direct methods
.method constructor <init>(Lcom/nthoell/cover/tools/TTR;)V
    .locals 0

    iput-object p1, p0, Lcom/nthoell/cover/tools/TTR$5;->this$0:Lcom/nthoell/cover/tools/TTR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nthoell/cover/tools/TTR$5;->this$0:Lcom/nthoell/cover/tools/TTR;

    invoke-static {v0}, Lcom/nthoell/cover/tools/TTR;->access$100(Lcom/nthoell/cover/tools/TTR;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
