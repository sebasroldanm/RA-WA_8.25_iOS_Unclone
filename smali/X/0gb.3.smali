.class public final synthetic LX/0gb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/0gb;->A00:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v1, p0, LX/0gb;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {v1, v0}, LX/06i;->A0a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
