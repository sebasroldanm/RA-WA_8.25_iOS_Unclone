.class public LX/1mu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/0C4;


# instance fields
.field public final synthetic A00:Landroid/content/Context;

.field public final synthetic A01:LX/0rX;

.field public final synthetic A02:LX/181;

.field public final synthetic A03:LX/1Pz;


# direct methods
.method public constructor <init>(LX/0rX;LX/181;Landroid/content/Context;LX/1Pz;)V
    .locals 0

    iput-object p1, p0, LX/1mu;->A01:LX/0rX;

    iput-object p2, p0, LX/1mu;->A02:LX/181;

    iput-object p3, p0, LX/1mu;->A00:Landroid/content/Context;

    iput-object p4, p0, LX/1mu;->A03:LX/1Pz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AEM(I)V
    .locals 0

    return-void
.end method

.method public AEN(IFI)V
    .locals 0

    return-void
.end method

.method public AEO(I)V
    .locals 3

    iget-object v0, p0, LX/1mu;->A01:LX/0rX;

    iget-object v1, v0, LX/0rX;->A0A:Landroidx/viewpager/widget/ViewPager;

    iget v0, v0, LX/0rX;->A00:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    iget-object v0, p0, LX/1mu;->A02:LX/181;

    invoke-virtual {v0}, LX/181;->A0L()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LX/1mu;->A01:LX/0rX;

    iput p1, v0, LX/0rX;->A00:I

    :goto_0
    iget-object v1, p0, LX/1mu;->A01:LX/0rX;

    iget v0, v1, LX/0rX;->A00:I

    invoke-virtual {v1, v0}, LX/0rX;->A03(I)V

    iget-object v0, p0, LX/1mu;->A01:LX/0rX;

    iget-object v1, v0, LX/0rX;->A0A:Landroidx/viewpager/widget/ViewPager;

    iget v0, v0, LX/0rX;->A00:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    check-cast v1, Landroid/widget/ListView;

    iget-object v0, p0, LX/1mu;->A01:LX/0rX;

    iget-object v0, v0, LX/0rX;->A0K:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v0, LX/0rM;

    invoke-direct {v0, p0, v2}, LX/0rM;-><init>(LX/1mu;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, LX/1mu;->A01:LX/0rX;

    iget-object v0, v1, LX/0rX;->A0D:[LX/0rQ;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, v1, LX/0rX;->A00:I

    goto :goto_0
.end method
