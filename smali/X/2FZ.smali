.class public LX/2FZ;
.super LX/1wE;
.source ""


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Landroid/view/View;

.field public A02:Z

.field public final A03:Lcom/whatsapp/TextEmojiLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;LX/26b;)V
    .locals 3

    invoke-direct {p0, p1, p2}, LX/1wE;-><init>(Landroid/content/Context;LX/1QA;)V

    const v0, 0x7f09056c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/whatsapp/TextEmojiLabel;

    iput-object v1, p0, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    if-eqz v1, :cond_0

    new-instance v0, LX/0sp;

    invoke-direct {v0}, LX/0sp;-><init>()V

    iput-object v0, v1, Lcom/whatsapp/TextEmojiLabel;->A07:LX/0sp;

    iget-object v0, p0, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    iget-object v0, p0, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinksClickable(Z)V

    iget-object v0, p0, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    invoke-virtual {p0}, LX/2FZ;->A0j()V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v0, "messageTextView for conversationRow is null, rightLayout="

    invoke-static {v0}, LX/0CI;->A0K(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p2, LX/1QA;->A0g:LX/1Q8;

    iget-boolean v0, v0, LX/1Q8;->A02:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static A05(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZLjava/util/ArrayList;ILX/181;Z)V
    .locals 10

    move-object/from16 v3, p9

    if-eqz p5, :cond_0

    const v0, 0x7f11050b

    invoke-virtual {v3, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const v0, 0x7f0906db

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090932

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    if-nez p1, :cond_e

    const-string v0, ""

    :goto_0
    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    new-instance v6, LX/0tn;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, LX/0tn;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v6, v4, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p6, :cond_2

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v0, 0x7f0602d0

    invoke-static {v6, v0}, LX/05Q;->A00(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    if-nez p1, :cond_d

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v7, v6, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    move-object/from16 v7, p7

    if-eqz p7, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v0, LX/2pr;->A00:LX/2pr;

    invoke-static {v6, v1, v7, v0, v3}, LX/2pr;->A00(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;LX/2pr;LX/181;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    :cond_3
    move/from16 v6, p8

    if-lez p8, :cond_4

    new-instance v1, Landroid/text/SpannableStringBuilder;

    const v0, 0x7f11048b

    invoke-virtual {v3, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09091e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/whatsapp/ThumbnailButton;

    const v0, 0x7f090480

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-nez p10, :cond_c

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p5, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    :cond_5
    iput v0, v7, Lcom/whatsapp/ThumbnailButton;->A02:F

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p6, :cond_8

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f0701b1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f0701b0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    if-eqz p5, :cond_6

    shl-int/lit8 v0, v9, 0x1

    div-int/lit8 v9, v0, 0x3

    shl-int/lit8 v0, v8, 0x1

    div-int/lit8 v8, v0, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f0701ae

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_3
    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_4
    const v0, 0x7f090996

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez p5, :cond_f

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_7

    :cond_6
    if-lez p8, :cond_7

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_5
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_5

    :cond_8
    if-lez p8, :cond_9

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f080341

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, LX/1VA;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0xc000000

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const v0, 0x7f11048b

    invoke-virtual {v3, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    if-eqz p4, :cond_a

    array-length v0, p4

    invoke-static {p4, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v7, v1}, LX/1VA;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    move-object v1, v2

    goto :goto_6

    :cond_b
    invoke-virtual {v7, v2}, LX/1VA;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    goto/16 :goto_1

    :cond_e
    move-object v0, p1

    goto/16 :goto_0

    :goto_7
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    sget-object v0, LX/2ox;->A03:[Ljava/lang/String;

    invoke-static {p3, v0}, LX/2ox;->A03(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, LX/2qh;->A03(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/watch"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    :catch_0
    :cond_10
    :goto_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    const v0, 0x7f0903ed

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0903ec

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-lez p8, :cond_11

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    int-to-long v0, v6

    invoke-static {v3, v0, v1}, LX/11i;->A1C(LX/181;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_11
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public A06()Z
    .locals 2

    iget-object v0, p0, LX/16t;->A0Q:LX/0q5;

    invoke-interface {v0}, LX/0q5;->A8R()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, LX/16t;->getFMessage()LX/1QA;

    move-result-object v0

    check-cast v0, LX/26b;

    iget-object v0, v0, LX/1QA;->A0g:LX/1Q8;

    iget-object v0, v0, LX/1Q8;->A00:LX/254;

    invoke-static {v0}, LX/1Ha;->A0p(Lcom/whatsapp/jid/Jid;)Z

    move-result v1

    const/4 v0, 0x1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public A0I()V
    .locals 1

    invoke-virtual {p0}, LX/2FZ;->A0j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LX/1wE;->A0c(Z)V

    return-void
.end method

.method public A0X(LX/1QA;Z)V
    .locals 7

    invoke-super {p0}, LX/16t;->getFMessage()LX/1QA;

    move-result-object v1

    check-cast v1, LX/26b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-super {p0, p1, p2}, LX/1wE;->A0X(LX/1QA;Z)V

    if-nez p2, :cond_5

    if-nez v0, :cond_5

    iget-object v0, p0, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-super {p0}, LX/16t;->getFMessage()LX/1QA;

    move-result-object v0

    check-cast v0, LX/26b;

    invoke-virtual {v0}, LX/1QA;->A0C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LX/1Ru;->A05(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x2764

    if-ne v3, v5, :cond_1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v0, 0xe022

    if-eq v1, v0, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x2

    if-ne v3, v0, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v0, 0xfe0f

    if-ne v1, v0, :cond_4

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {p0}, LX/2FZ;->A0k()V

    :cond_3
    return-void

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, LX/2FZ;->A0j()V

    return-void
.end method

.method public final A0j()V
    .locals 24

    move-object/from16 v4, p0

    invoke-super {v4}, LX/16t;->getFMessage()LX/1QA;

    move-result-object v3

    check-cast v3, LX/26b;

    invoke-virtual {v3}, LX/1QA;->A0C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LX/1Ru;->A05(Ljava/lang/Object;)V

    const v0, 0x7f0909f0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    new-instance v9, LX/2eE;

    iget-object v7, v3, LX/26b;->A04:Ljava/lang/String;

    iget-object v6, v3, LX/26b;->A02:Ljava/lang/String;

    invoke-virtual {v3}, LX/1QA;->A0C()Ljava/lang/String;

    move-result-object v12

    iget-object v5, v3, LX/26b;->A05:Ljava/lang/String;

    invoke-virtual {v3}, LX/26b;->A0y()[B

    move-result-object v1

    const/4 v0, 0x0

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    const/4 v14, 0x1

    :cond_0
    iget v1, v3, LX/26b;->A00:I

    move v15, v1

    move-object v10, v7

    move-object v11, v6

    move-object v13, v5

    invoke-direct/range {v9 .. v15}, LX/2eE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v1, v9, LX/2eE;->A02:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v13, 0x8

    const/4 v5, 0x0

    if-nez v1, :cond_18

    invoke-virtual {v4, v3}, LX/1wE;->A0i(LX/1QA;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual/range {p0 .. p0}, LX/1wE;->A0L()V

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v4, LX/2FZ;->A01:Landroid/view/View;

    const/4 v10, -0x1

    const/4 v7, -0x2

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v1, 0x7f0c028c

    invoke-virtual {v6, v1, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/whatsapp/yo/Conversation;->pageDescColor(Landroid/view/View;)V

    iput-object v1, v4, LX/2FZ;->A01:Landroid/view/View;

    invoke-virtual {v8, v1, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v6, v4, LX/2FZ;->A01:Landroid/view/View;

    iget-object v1, v4, LX/1wE;->A0O:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    iget-boolean v7, v9, LX/2eE;->A03:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/whatsapp/Conversation;

    if-eqz v1, :cond_2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v6, v1, :cond_2

    const/4 v1, 0x1

    if-nez v7, :cond_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    iput-boolean v1, v4, LX/2FZ;->A02:Z

    iget-object v1, v3, LX/1QA;->A0g:LX/1Q8;

    iget-boolean v1, v1, LX/1Q8;->A02:Z

    if-nez v1, :cond_4

    sget-boolean v1, LX/0wD;->A2U:Z

    if-eqz v1, :cond_4

    iget-object v10, v9, LX/2eE;->A02:Ljava/lang/String;

    invoke-virtual {v3}, LX/1QA;->A09()Lcom/whatsapp/jid/UserJid;

    move-result-object v7

    iget-object v6, v4, LX/1wE;->A0r:LX/181;

    iget-object v5, v4, LX/1wE;->A0c:LX/0t1;

    iget-object v1, v4, LX/1wE;->A0U:LX/0WY;

    invoke-static {v6, v5, v1, v10, v7}, LX/1wE;->A03(LX/181;LX/0t1;LX/0WY;Ljava/lang/String;LX/254;)Ljava/util/Set;

    move-result-object v5

    :cond_4
    iget-object v6, v4, LX/2FZ;->A01:Landroid/view/View;

    const v1, 0x7f09091e

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/whatsapp/ThumbnailButton;

    iget-object v7, v4, LX/2FZ;->A01:Landroid/view/View;

    const v1, 0x7f090480

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_f

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, LX/1wE;->A0G()V

    iget-object v1, v4, LX/2FZ;->A01:Landroid/view/View;

    new-instance v0, LX/16W;

    invoke-direct {v0, v4, v9, v5}, LX/16W;-><init>(LX/2FZ;LX/2eE;Ljava/util/Set;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    :goto_0
    iget-object v0, v9, LX/2eE;->A02:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/AcceptInviteLinkActivity;->A00(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x1

    xor-int/lit8 v15, v0, 0x1

    iget-object v0, v4, LX/2FZ;->A00:Landroid/view/View;

    if-eqz v15, :cond_e

    if-nez v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v1, 0x7f0c0177

    const/4 v0, 0x0

    invoke-virtual {v8, v1, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v4, LX/2FZ;->A00:Landroid/view/View;

    const v0, 0x7f090477

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v8, v4, LX/1wE;->A0r:LX/181;

    iget-object v0, v3, LX/1QA;->A0g:LX/1Q8;

    iget-boolean v1, v0, LX/1Q8;->A02:Z

    const v0, 0x7f1105a0

    if-eqz v1, :cond_5

    const v0, 0x7f110d1e

    :cond_5
    invoke-virtual {v8, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v10}, LX/0xS;->A03(Landroid/widget/TextView;)V

    const v0, 0x7f0904d4

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v8, v4, LX/2FZ;->A00:Landroid/view/View;

    const/4 v1, -0x1

    const/4 v0, -0x2

    invoke-virtual {v10, v8, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_6
    iget-object v1, v4, LX/2FZ;->A00:Landroid/view/View;

    new-instance v0, LX/1x2;

    invoke-direct {v0, v4, v9}, LX/1x2;-><init>(LX/2FZ;LX/2eE;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_1
    iget-object v10, v4, LX/2FZ;->A01:Landroid/view/View;

    iget-object v8, v3, LX/26b;->A04:Ljava/lang/String;

    iget-object v1, v3, LX/26b;->A02:Ljava/lang/String;

    iget-object v9, v9, LX/2eE;->A01:Ljava/lang/String;

    invoke-virtual {v3}, LX/26b;->A0y()[B

    move-result-object v14

    const/16 v16, 0x0

    if-eqz v5, :cond_8

    const/16 v16, 0x1

    :cond_8
    invoke-virtual/range {p0 .. p0}, LX/16t;->getRowsContainer()LX/0q8;

    move-result-object v0

    if-nez v0, :cond_d

    const/16 v17, 0x0

    :goto_2
    const/16 v18, -0x1

    iget-object v5, v4, LX/1wE;->A0r:LX/181;

    iget-boolean v0, v4, LX/2FZ;->A02:Z

    move-object/from16 v19, v5

    move/from16 v20, v0

    move-object v11, v8

    move-object v12, v1

    move-object v13, v9

    invoke-static/range {v10 .. v20}, LX/2FZ;->A05(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZLjava/util/ArrayList;ILX/181;Z)V

    iget-object v1, v4, LX/2FZ;->A01:Landroid/view/View;

    const v0, 0x7f090491

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v0, v3, LX/1QA;->A0g:LX/1Q8;

    iget-boolean v0, v0, LX/1Q8;->A02:Z

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LX/11i;->A0W(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v0, v4, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    invoke-virtual {v4, v2, v0, v3}, LX/1wE;->setMessageText(Ljava/lang/String;Lcom/whatsapp/TextEmojiLabel;LX/1QA;)V

    iget-object v0, v4, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    invoke-virtual {v0, v7, v7, v7, v7}, LX/1VI;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, v4, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v3, 0x2764

    if-ne v5, v6, :cond_9

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v0, 0xe022

    if-eq v1, v0, :cond_a

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_a

    :cond_9
    const/4 v0, 0x2

    if-ne v5, v0, :cond_b

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_b

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v0, 0xfe0f

    if-ne v1, v0, :cond_b

    :cond_a
    iget-object v1, v4, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    const v0, 0x7f080357

    invoke-virtual {v1, v0, v7, v7, v7}, LX/1VI;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v1, v4, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, LX/2FZ;->A0k()V

    :cond_b
    return-void

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LX/11i;->A0V(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, LX/16t;->getRowsContainer()LX/0q8;

    move-result-object v0

    invoke-interface {v0}, LX/0q8;->A6w()Ljava/util/ArrayList;

    move-result-object v17

    goto/16 :goto_2

    :cond_e
    if-eqz v0, :cond_7

    const v0, 0x7f0904d4

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, v4, LX/2FZ;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, v4, LX/2FZ;->A00:Landroid/view/View;

    goto/16 :goto_1

    :cond_f
    iget-boolean v7, v4, LX/2FZ;->A02:Z

    if-eqz v7, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/whatsapp/Conversation;

    iget-object v10, v4, LX/2FZ;->A01:Landroid/view/View;

    const v7, 0x7f09047e

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ProgressBar;

    iget-object v10, v4, LX/2FZ;->A01:Landroid/view/View;

    const v7, 0x7f090691

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iget-object v10, v4, LX/2FZ;->A01:Landroid/view/View;

    const v7, 0x7f09045a

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v15, v4, LX/2FZ;->A01:Landroid/view/View;

    const v7, 0x7f0904cb

    invoke-virtual {v15, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/widget/ProgressBar;->setAlpha(F)V

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v17, v11

    move/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v10, v15}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    iget v13, v9, LX/2eE;->A00:I

    const/4 v6, 0x1

    if-eq v13, v6, :cond_16

    const/4 v6, 0x7

    if-eq v13, v6, :cond_16

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, v9, LX/2eE;->A00:I

    invoke-static {v0}, LX/2qh;->A00(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_5
    iget-object v6, v4, LX/2FZ;->A01:Landroid/view/View;

    const v0, 0x7f09047f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    new-instance v16, LX/1wy;

    move-object/from16 v23, v1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v17, v4

    move-object/from16 v18, v1

    move-object/from16 v19, v12

    move-object/from16 v20, v11

    move-object/from16 v21, v10

    move-object/from16 v22, v7

    invoke-direct/range {v16 .. v22}, LX/1wy;-><init>(LX/2FZ;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    iget-object v1, v14, Lcom/whatsapp/Conversation;->A17:LX/2qt;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, LX/2qt;->A00()LX/1Q8;

    move-result-object v14

    if-eqz v14, :cond_10

    iget-object v0, v3, LX/1QA;->A0g:LX/1Q8;

    invoke-virtual {v14, v0}, LX/1Q8;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object/from16 v0, v16

    iput-object v0, v1, LX/2qt;->A0B:LX/2qp;

    iget v15, v1, LX/2qt;->A01:I

    if-nez v15, :cond_14

    invoke-virtual {v12, v6}, Landroid/widget/ProgressBar;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_10
    const/4 v14, 0x1

    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LX/2FT;->A05(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x48

    div-int/lit8 v10, v0, 0x64

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v10, v0

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr v10, v0

    new-array v11, v14, [Landroid/graphics/Bitmap;

    iget v1, v9, LX/2eE;->A00:I

    const/4 v0, 0x4

    const/high16 v8, 0x3f100000    # 0.5625f

    if-ne v1, v0, :cond_12

    const/4 v7, 0x0

    :goto_7
    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v0, v10

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v8, LX/1wz;

    invoke-direct {v8, v13, v11, v10}, LX/1wz;-><init>(Landroid/widget/ImageView;[Landroid/graphics/Bitmap;I)V

    iget-object v6, v9, LX/2eE;->A01:Ljava/lang/String;

    iget-object v1, v4, LX/2FZ;->A01:Landroid/view/View;

    new-instance v0, LX/1x0;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v3

    move-object/from16 v21, v16

    move-object/from16 v22, v9

    move-object/from16 v23, v11

    invoke-direct/range {v17 .. v23}, LX/1x0;-><init>(LX/2FZ;Ljava/lang/String;LX/26b;LX/2qp;LX/2eE;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, LX/1wE;->A18:LX/3Fc;

    invoke-virtual {v0, v3, v13, v8}, LX/3Fc;->A08(LX/1QA;Landroid/view/View;LX/2pD;)V

    goto/16 :goto_0

    :cond_12
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v14, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3}, LX/26b;->A0y()[B

    move-result-object v1

    invoke-virtual {v3}, LX/26b;->A0y()[B

    move-result-object v0

    array-length v0, v0

    const/4 v7, 0x0

    invoke-static {v1, v7, v0, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, v0

    int-to-float v1, v1

    cmpg-float v0, v1, v6

    if-gez v0, :cond_13

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_7

    :cond_13
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v8

    goto :goto_7

    :cond_14
    const/4 v1, 0x0

    const/4 v14, 0x1

    if-ne v15, v14, :cond_15

    invoke-virtual {v12, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    invoke-virtual {v11, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v10, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_6

    :cond_15
    const/4 v0, 0x2

    if-ne v15, v0, :cond_11

    invoke-virtual {v12, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    invoke-virtual {v11, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_6

    :cond_16
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_17
    const/4 v7, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v4, LX/2FZ;->A01:Landroid/view/View;

    new-instance v0, LX/1x1;

    invoke-direct {v0, v4, v9}, LX/1x1;-><init>(LX/2FZ;LX/2eE;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_18
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, LX/1wE;->A0G()V

    iget-object v0, v4, LX/2FZ;->A01:Landroid/view/View;

    if-eqz v0, :cond_19

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v5, v4, LX/2FZ;->A01:Landroid/view/View;

    :cond_19
    iget-object v0, v4, LX/2FZ;->A00:Landroid/view/View;

    if-eqz v0, :cond_1a

    const v0, 0x7f0904d4

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, v4, LX/2FZ;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v5, v4, LX/2FZ;->A00:Landroid/view/View;

    :cond_1a
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public final A0k()V
    .locals 11

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3f59999a    # 0.85f

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, LX/2FZ;->A03:Lcom/whatsapp/TextEmojiLabel;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getCenteredLayoutId()I
    .locals 1

    const v0, 0x7f0c00d5

    return v0
.end method

.method public bridge synthetic getFMessage()LX/1QA;
    .locals 1

    invoke-super {p0}, LX/16t;->getFMessage()LX/1QA;

    move-result-object v0

    check-cast v0, LX/26b;

    return-object v0
.end method

.method public getFMessage()LX/26b;
    .locals 1

    invoke-super {p0}, LX/16t;->getFMessage()LX/1QA;

    move-result-object v0

    check-cast v0, LX/26b;

    return-object v0
.end method

.method public getIncomingLayoutId()I
    .locals 1

    const v0, 0x7f0c00d6

    invoke-static {v0}, Lcom/whatsapp/yo/Conversation;->leftlayID(I)I

    move-result v0

    return v0
.end method

.method public getMainChildMaxWidth()I
    .locals 1

    iget-boolean v0, p0, LX/2FZ;->A02:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LX/2FT;->A05(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x48

    div-int/lit8 v0, v0, 0x64

    return v0

    :cond_0
    invoke-super {p0}, LX/16t;->getMainChildMaxWidth()I

    move-result v0

    return v0
.end method

.method public getOutgoingLayoutId()I
    .locals 1

    const v0, 0x7f0c00d7

    invoke-static {v0}, Lcom/whatsapp/yo/Conversation;->rightlayID(I)I

    move-result v0

    return v0
.end method

.method public getTextFontSize()F
    .locals 5

    invoke-super {p0}, LX/16t;->getFMessage()LX/1QA;

    move-result-object v0

    check-cast v0, LX/26b;

    invoke-virtual {v0}, LX/1QA;->A0C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LX/1Ru;->A05(Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {v1, v0}, LX/01Y;->A06(Ljava/lang/CharSequence;I)I

    move-result v4

    if-lez v4, :cond_0

    if-gt v4, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, LX/1wE;->A0r:LX/181;

    sget v0, Lcom/whatsapp/preference/WaFontListPreference;->A02:I

    invoke-static {v2, v1, v0}, LX/1wE;->A02(Landroid/content/res/Resources;LX/181;I)F

    move-result v3

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v1, v3

    rsub-int/lit8 v0, v4, 0x4

    int-to-float v0, v0

    mul-float/2addr v1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr v1, v0

    add-float/2addr v1, v3

    return v1

    :cond_0
    invoke-super {p0}, LX/1wE;->getTextFontSize()F

    move-result v0

    return v0
.end method

.method public setFMessage(LX/1QA;)V
    .locals 1

    instance-of v0, p1, LX/26b;

    invoke-static {v0}, LX/1Ru;->A09(Z)V

    invoke-super {p0, p1}, LX/16t;->setFMessage(LX/1QA;)V

    return-void
.end method
