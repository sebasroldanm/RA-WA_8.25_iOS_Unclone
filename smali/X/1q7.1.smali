.class public LX/1q7;
.super LX/0Ai;
.source ""


# instance fields
.field public final A00:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, LX/0Ai;-><init>(Landroid/view/View;)V

    const v0, 0x7f090504

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LX/1q7;->A00:Landroid/widget/TextView;

    return-void
.end method
