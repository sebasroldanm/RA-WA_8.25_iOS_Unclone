.class public LX/30S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/0R5;


# instance fields
.field public final A00:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/whatsapp/location/LocationPicker2;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v2, 0x7f0c01f3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LX/30S;->A00:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public A5U(LX/0RS;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public A5W(LX/0RS;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, LX/30S;->A00:Landroid/view/View;

    const v0, 0x7f090689

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v1, p0, LX/30S;->A00:Landroid/view/View;

    const v0, 0x7f090688

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, LX/0RS;->A01()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/whatsapp/PlaceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LX/0RS;->A01()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/whatsapp/PlaceInfo;

    iget-object v0, v1, Lcom/whatsapp/PlaceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/whatsapp/PlaceInfo;->vicinity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, LX/30S;->A00:Landroid/view/View;

    return-object v0
.end method
