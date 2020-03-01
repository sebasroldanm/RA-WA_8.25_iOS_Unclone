.class Lcom/nthoell/cover/tools/TTR$3;
.super Ljava/lang/Object;
.source "TTR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nthoell/cover/tools/TTR;->ShowToast(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nthoell/cover/tools/TTR;

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Lcom/nthoell/cover/tools/TTR;J)V
    .locals 0

    iput-object p1, p0, Lcom/nthoell/cover/tools/TTR$3;->this$0:Lcom/nthoell/cover/tools/TTR;

    iput-wide p2, p0, Lcom/nthoell/cover/tools/TTR$3;->val$value:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nthoell/cover/tools/TTR$3;->this$0:Lcom/nthoell/cover/tools/TTR;

    invoke-static {v0}, Lcom/nthoell/cover/tools/TTR;->access$000(Lcom/nthoell/cover/tools/TTR;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/nthoell/cover/tools/TTR$3;->val$value:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
