.class public LX/1WX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/06n;


# instance fields
.field public A00:LX/06m;

.field public A01:Z


# direct methods
.method public constructor <init>(LX/06m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/1WX;->A00:LX/06m;

    return-void
.end method


# virtual methods
.method public A9X(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, LX/06n;

    if-eqz v0, :cond_1

    check-cast v1, LX/06n;

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, LX/06n;->A9X(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public A9Z(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, LX/1WX;->A00:LX/06m;

    iget v0, v0, LX/06m;->A00:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, LX/1WX;->A00:LX/06m;

    iput v1, v0, LX/06m;->A00:I

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge v1, v0, :cond_1

    iget-boolean v0, p0, LX/1WX;->A01:Z

    if-nez v0, :cond_5

    :cond_1
    iget-object v1, p0, LX/1WX;->A00:LX/06m;

    iget-object v0, v1, LX/06m;->A01:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iput-object v2, v1, LX/06m;->A01:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, LX/06n;

    if-eqz v0, :cond_3

    move-object v2, v1

    check-cast v2, LX/06n;

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2, p1}, LX/06n;->A9Z(Landroid/view/View;)V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, LX/1WX;->A01:Z

    :cond_5
    return-void
.end method

.method public A9c(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, LX/1WX;->A01:Z

    iget-object v0, p0, LX/1WX;->A00:LX/06m;

    iget v1, v0, LX/06m;->A00:I

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-le v1, v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v1, p0, LX/1WX;->A00:LX/06m;

    iget-object v0, v1, LX/06m;->A02:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iput-object v2, v1, LX/06m;->A02:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, LX/06n;

    if-eqz v0, :cond_2

    move-object v2, v1

    check-cast v2, LX/06n;

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, LX/06n;->A9c(Landroid/view/View;)V

    :cond_3
    return-void
.end method
