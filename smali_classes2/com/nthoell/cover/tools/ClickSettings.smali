.class public Lcom/nthoell/cover/tools/ClickSettings;
.super Landroid/widget/LinearLayout;
.source "BegalDevOnClickSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nthoell/cover/tools/ClickSettings$100000000;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nthoell/cover/tools/ClickSettings$100000000;

    invoke-direct {v0, p0}, Lcom/nthoell/cover/tools/ClickSettings$100000000;-><init>(Lcom/nthoell/cover/tools/ClickSettings;)V

    invoke-virtual {p0, v0}, Lcom/nthoell/cover/tools/ClickSettings;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
