.class public Lcom/nthoell/CardView;
.super Landroidx/cardview/widget/CardView;
.source "CardView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/nthoell/CardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/nthoell/CardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/nthoell/CardView;->init()V

    return-void
.end method


# virtual methods
.method init()V
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/nthoell/tools/utils/Tools;->dpToPx(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/nthoell/CardView;->setRadius(F)V

    invoke-static {}, Lcom/kharis/aktip;->Card()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nthoell/CardView;->setCardBackgroundColor(I)V

    return-void
.end method
