.class public final synthetic LX/2g3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic A00:LX/0ON;


# direct methods
.method public synthetic constructor <init>(LX/0ON;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/2g3;->A00:LX/0ON;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, LX/2g3;->A00:LX/0ON;

    const/16 v0, 0x16

    invoke-static {v1, v0}, LX/01Y;->A17(Landroid/app/Activity;I)V

    return-void
.end method
