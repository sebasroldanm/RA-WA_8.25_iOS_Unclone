.class public LX/0np;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic A00:LX/0ns;


# direct methods
.method public constructor <init>(LX/0ns;)V
    .locals 0

    iput-object p1, p0, LX/0np;->A00:LX/0ns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    const/4 v0, 0x2

    new-array v3, v0, [I

    iget-object v0, p0, LX/0np;->A00:LX/0ns;

    iget-object v0, v0, LX/0ns;->A03:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, LX/0np;->A00:LX/0ns;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LX/0np;->A00:LX/0ns;

    invoke-virtual {v0}, LX/0ns;->A05()V

    return-void

    :cond_0
    iget-object v2, p0, LX/0np;->A00:LX/0ns;

    iget v1, v2, LX/0ns;->A01:I

    const/4 v0, 0x0

    aget v0, v3, v0

    if-eq v1, v0, :cond_1

    invoke-virtual {v2}, LX/0ns;->A05()V

    iget-object v0, p0, LX/0np;->A00:LX/0ns;

    iget-object v1, v0, LX/0ns;->A03:Landroid/view/View;

    new-instance v0, LX/0Zy;

    invoke-direct {v0, p0}, LX/0Zy;-><init>(LX/0np;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
