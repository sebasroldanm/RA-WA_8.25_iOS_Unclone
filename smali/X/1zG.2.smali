.class public LX/1zG;
.super LX/1Fd;
.source ""


# static fields
.field public static final A01:[I

.field public static final A02:[I


# instance fields
.field public final A00:LX/1zF;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v9, 0x8

    new-array v1, v9, [I

    const v0, 0x7f08023b

    const/4 v10, 0x0

    aput v0, v1, v10

    const v0, 0x7f080239

    const/4 v8, 0x1

    aput v0, v1, v8

    const v0, 0x7f080238

    const/4 v7, 0x2

    aput v0, v1, v7

    const v0, 0x7f080236

    const/4 v6, 0x3

    aput v0, v1, v6

    const v0, 0x7f08023f

    const/4 v5, 0x4

    aput v0, v1, v5

    const v0, 0x7f08023d

    const/4 v4, 0x5

    aput v0, v1, v4

    const v0, 0x7f08023a

    const/4 v3, 0x6

    aput v0, v1, v3

    const v0, 0x7f080237

    const/4 v2, 0x7

    aput v0, v1, v2

    sput-object v1, LX/1zG;->A01:[I

    new-array v1, v9, [I

    const v0, 0x7f110348

    aput v0, v1, v10

    const v0, 0x7f110346

    aput v0, v1, v8

    const v0, 0x7f110345

    aput v0, v1, v7

    const v0, 0x7f110343

    aput v0, v1, v6

    const v0, 0x7f11034a

    aput v0, v1, v5

    const v0, 0x7f110349

    aput v0, v1, v4

    const v0, 0x7f110347

    aput v0, v1, v3

    const v0, 0x7f110344

    aput v0, v1, v2

    sput-object v1, LX/1zG;->A02:[I

    return-void
.end method

.method public constructor <init>(LX/181;Landroidx/recyclerview/widget/RecyclerView;Lcom/whatsapp/doodle/shapepicker/ShapePickerRecyclerView;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LX/1Fd;-><init>(LX/181;Landroidx/recyclerview/widget/RecyclerView;Lcom/whatsapp/doodle/shapepicker/ShapePickerRecyclerView;Z)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v2, LX/1zF;

    const v0, 0x7f07028f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v0, 0x7f070290

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v2, v1, v0}, LX/1zF;-><init>(II)V

    iput-object v2, p0, LX/1zG;->A00:LX/1zF;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->A0m(LX/0AP;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v0, LX/1Fc;

    invoke-direct {v0, p2}, LX/1Fc;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public A02(LX/1zJ;Z)V
    .locals 5

    invoke-super {p0, p1, p2}, LX/1Fd;->A02(LX/1zJ;Z)V

    iget-object v0, p1, LX/1zJ;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v0, p0, LX/1Fd;->A05:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f0702ab

    if-eqz p2, :cond_0

    const v0, 0x7f0702aa

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v2, v3

    iget-object v0, p0, LX/1Fd;->A05:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f07028e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    const v0, 0x3f666666    # 0.9f

    :cond_1
    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    float-to-int v0, v2

    shr-int/lit8 v1, v0, 0x1

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p1, LX/1zJ;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, LX/1zJ;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p1, LX/0Ai;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz p2, :cond_2

    iget-object v0, p0, LX/1Fd;->A05:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f07028f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_0
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p1, LX/0Ai;->A0H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, LX/1zG;->A00:LX/1zF;

    iput-boolean p2, v0, LX/1zF;->A00:Z

    return-void

    :cond_2
    const/4 v0, -0x2

    goto :goto_0
.end method
