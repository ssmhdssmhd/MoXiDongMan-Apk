.class public Landroid/support/v4/vh1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Landroid/support/v4/vh1;->if(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static for(ZILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/v4/vh1;->new(ZILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;I)Ljava/lang/CharSequence;
    .locals 15

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v7, p4

    if-nez v2, :cond_0

    if-nez v7, :cond_0

    return-object v0

    :cond_0
    const-string v8, "[icon]"

    .line 1
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/16 v10, 0x11

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v12, v12, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    .line 5
    new-instance v14, Landroid/support/v4/oh1;

    const/16 v3, -0x64

    const/4 v4, 0x0

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v5, p1

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/oh1;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 6
    invoke-virtual {v14, v11}, Landroid/support/v4/bh1;->do(Z)V

    .line 7
    invoke-virtual {v9, v14, v12, v13, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8
    :cond_1
    invoke-virtual {v9, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v7, v12, v12, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 11
    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 13
    new-instance v12, Landroid/support/v4/oh1;

    const/16 v2, -0x64

    const/4 v4, 0x0

    move-object v0, v12

    move-object/from16 v1, p4

    move/from16 v3, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/oh1;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 14
    invoke-virtual {v12, v11}, Landroid/support/v4/bh1;->do(Z)V

    .line 15
    invoke-virtual {v9, v12, v6, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object v9
.end method

.method public static new(ZILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;I)Ljava/lang/CharSequence;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    move-object v3, p3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p0, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v4, p1

    :goto_2
    if-eqz p0, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    move-object v5, p3

    :goto_3
    move-object v1, p2

    move v6, p4

    .line 1
    invoke-static/range {v1 .. v6}, Landroid/support/v4/vh1;->if(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
