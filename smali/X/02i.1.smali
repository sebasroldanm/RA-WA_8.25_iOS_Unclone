.class public LX/02i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic A00:LX/28H;


# direct methods
.method public constructor <init>(LX/28H;)V
    .locals 0

    iput-object p1, p0, LX/02i;->A00:LX/28H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v2, p0, LX/02i;->A00:LX/28H;

    iget-object v1, v2, LX/28H;->A04:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v1}, LX/06i;->A0m(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, LX/28H;->A03:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    iget-object v0, p0, LX/02i;->A00:LX/28H;

    if-nez v1, :cond_2

    invoke-virtual {v0}, LX/1VM;->dismiss()V

    return-void

    :cond_2
    invoke-virtual {v0}, LX/28H;->A02()V

    iget-object v0, p0, LX/02i;->A00:LX/28H;

    invoke-static {v0}, LX/28H;->A00(LX/28H;)V

    return-void
.end method
