.class public LX/1wT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/2pD;


# instance fields
.field public final synthetic A00:LX/2JB;


# direct methods
.method public constructor <init>(LX/2JB;)V
    .locals 0

    iput-object p1, p0, LX/1wT;->A00:LX/2JB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A75()I
    .locals 4

    iget-object v0, p0, LX/1wT;->A00:LX/2JB;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LX/2FT;->A05(Landroid/content/Context;)I

    move-result v3

    iget-object v0, p0, LX/1wT;->A00:LX/2JB;

    iget-boolean v2, v0, LX/16t;->A0I:Z

    const/16 v1, 0x64

    const/16 v0, 0x48

    if-eqz v2, :cond_0

    const/16 v0, 0x64

    :cond_0
    mul-int/2addr v3, v0

    div-int/2addr v3, v1

    return v3
.end method

.method public ACV()V
    .locals 1

    iget-object v0, p0, LX/1wT;->A00:LX/2JB;

    invoke-virtual {v0}, LX/2FT;->A0m()Z

    return-void
.end method

.method public AK3(Landroid/view/View;Landroid/graphics/Bitmap;LX/1QA;)V
    .locals 5

    if-eqz p2, :cond_2

    instance-of v0, p3, LX/26X;

    if-eqz v0, :cond_2

    check-cast p3, LX/26X;

    iget-object v0, p3, LX/26X;->A02:LX/0tI;

    invoke-static {v0}, LX/1Ru;->A05(Ljava/lang/Object;)V

    iget v4, v0, LX/0tI;->A07:I

    if-eqz v4, :cond_0

    iget v3, v0, LX/0tI;->A05:I

    if-eqz v3, :cond_0

    iget-object v0, p0, LX/1wT;->A00:LX/2JB;

    instance-of v2, v0, LX/2L6;

    iget-object v1, v0, LX/2JB;->A07:Lcom/whatsapp/conversationrow/ConversationRowImage$RowImageView;

    iput v4, v1, Lcom/whatsapp/conversationrow/ConversationRowImage$RowImageView;->A01:I

    iput v3, v1, Lcom/whatsapp/conversationrow/ConversationRowImage$RowImageView;->A00:I

    iget-boolean v0, v0, LX/16t;->A0I:Z

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    iget-object v0, p0, LX/1wT;->A00:LX/2JB;

    iget-object v0, v0, LX/2JB;->A07:Lcom/whatsapp/conversationrow/ConversationRowImage$RowImageView;

    invoke-virtual {v0, p2}, Lcom/whatsapp/conversationrow/ConversationRowImage$RowImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_2
    iget-object v0, p0, LX/1wT;->A00:LX/2JB;

    iget-object v1, v0, LX/2JB;->A07:Lcom/whatsapp/conversationrow/ConversationRowImage$RowImageView;

    const v0, 0x7f080376

    invoke-virtual {v1, v0}, LX/1VA;->setImageResource(I)V

    iget-object v1, p0, LX/1wT;->A00:LX/2JB;

    const/4 v0, 0x0

    iput-boolean v0, v1, LX/2JB;->A00:Z

    return-void
.end method

.method public AKA(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, LX/1wT;->A00:LX/2JB;

    const/4 v0, 0x0

    iput-boolean v0, v1, LX/2JB;->A00:Z

    iget-object v1, v1, LX/2JB;->A07:Lcom/whatsapp/conversationrow/ConversationRowImage$RowImageView;

    const v0, -0x777778

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method
