.class public final synthetic LX/0fl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic A00:Lcom/whatsapp/ListChatInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/whatsapp/ListChatInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/0fl;->A00:Lcom/whatsapp/ListChatInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, LX/0fl;->A00:Lcom/whatsapp/ListChatInfo;

    const/4 v0, 0x3

    invoke-static {v1, v0}, LX/01Y;->A18(Landroid/app/Activity;I)V

    return-void
.end method
