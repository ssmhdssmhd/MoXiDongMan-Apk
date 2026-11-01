.class public Lcn/qqtheme/framework/adapter/do;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/qqtheme/framework/adapter/do$if;
    }
.end annotation


# static fields
.field public static final final:Ljava/lang/String; = "."

.field public static final super:Ljava/lang/String; = ".."


# instance fields
.field private break:Landroid/graphics/drawable/Drawable;

.field private case:Z

.field private catch:Landroid/graphics/drawable/Drawable;

.field private class:Landroid/graphics/drawable/Drawable;

.field private const:Landroid/graphics/drawable/Drawable;

.field private do:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/qa0;",
            ">;"
        }
    .end annotation
.end field

.field private else:Z

.field private for:Ljava/lang/String;

.field private goto:Z

.field private if:Ljava/lang/String;

.field private new:[Ljava/lang/String;

.field private this:I

.field private try:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->do:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->if:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->for:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->new:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcn/qqtheme/framework/adapter/do;->try:Z

    .line 7
    iput-boolean v1, p0, Lcn/qqtheme/framework/adapter/do;->case:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcn/qqtheme/framework/adapter/do;->else:Z

    .line 9
    iput-boolean v1, p0, Lcn/qqtheme/framework/adapter/do;->goto:Z

    const/16 v1, 0x28

    .line 10
    iput v1, p0, Lcn/qqtheme/framework/adapter/do;->this:I

    .line 11
    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->break:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->catch:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->class:Landroid/graphics/drawable/Drawable;

    .line 14
    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->const:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public break(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/adapter/do;->const:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public case()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/qqtheme/framework/adapter/do;->else:Z

    return v0
.end method

.method public catch(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/adapter/do;->class:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public class(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/adapter/do;->break:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public const(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/qqtheme/framework/adapter/do;->this:I

    return-void
.end method

.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->for:Ljava/lang/String;

    return-object v0
.end method

.method public else(Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    const-string p1, "current directory is null"

    .line 1
    invoke-static {p1}, Landroid/support/v4/uv0;->throws(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->break:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/support/v4/sa0;->new()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ur;->static([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->break:Landroid/graphics/drawable/Drawable;

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->catch:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Landroid/support/v4/sa0;->try()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ur;->static([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->catch:Landroid/graphics/drawable/Drawable;

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->class:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 7
    invoke-static {}, Landroid/support/v4/sa0;->for()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ur;->static([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->class:Landroid/graphics/drawable/Drawable;

    .line 8
    :cond_3
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->const:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 9
    invoke-static {}, Landroid/support/v4/sa0;->if()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ur;->static([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/qqtheme/framework/adapter/do;->const:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v1, p0, Lcn/qqtheme/framework/adapter/do;->if:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 12
    iput-object p1, p0, Lcn/qqtheme/framework/adapter/do;->if:Ljava/lang/String;

    .line 13
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current directory path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/uv0;->public(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcn/qqtheme/framework/adapter/do;->for:Ljava/lang/String;

    .line 15
    iget-boolean v1, p0, Lcn/qqtheme/framework/adapter/do;->case:Z

    const-string v2, "."

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    .line 16
    new-instance v1, Landroid/support/v4/qa0;

    invoke-direct {v1}, Landroid/support/v4/qa0;-><init>()V

    .line 17
    invoke-virtual {v1, v5}, Landroid/support/v4/qa0;->setDirectory(Z)V

    .line 18
    iget-object v6, p0, Lcn/qqtheme/framework/adapter/do;->break:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/support/v4/qa0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {v1, v2}, Landroid/support/v4/qa0;->setName(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/qa0;->setSize(J)V

    .line 21
    iget-object v6, p0, Lcn/qqtheme/framework/adapter/do;->if:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/support/v4/qa0;->setPath(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_6
    iget-boolean v1, p0, Lcn/qqtheme/framework/adapter/do;->else:Z

    if-eqz v1, :cond_7

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 24
    new-instance v1, Landroid/support/v4/qa0;

    invoke-direct {v1}, Landroid/support/v4/qa0;-><init>()V

    .line 25
    invoke-virtual {v1, v5}, Landroid/support/v4/qa0;->setDirectory(Z)V

    .line 26
    iget-object v5, p0, Lcn/qqtheme/framework/adapter/do;->catch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/support/v4/qa0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v5, ".."

    .line 27
    invoke-virtual {v1, v5}, Landroid/support/v4/qa0;->setName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/qa0;->setSize(J)V

    .line 29
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/qa0;->setPath(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_7
    iget-object p1, p0, Lcn/qqtheme/framework/adapter/do;->new:[Ljava/lang/String;

    if-nez p1, :cond_9

    .line 32
    iget-boolean p1, p0, Lcn/qqtheme/framework/adapter/do;->try:Z

    if-eqz p1, :cond_8

    .line 33
    iget-object p1, p0, Lcn/qqtheme/framework/adapter/do;->for:Ljava/lang/String;

    invoke-static {p1}, Lcn/qqtheme/framework/util/do;->return(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_8
    iget-object p1, p0, Lcn/qqtheme/framework/adapter/do;->for:Ljava/lang/String;

    invoke-static {p1}, Lcn/qqtheme/framework/util/do;->throws(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 35
    :cond_9
    iget-boolean v1, p0, Lcn/qqtheme/framework/adapter/do;->try:Z

    if-eqz v1, :cond_a

    .line 36
    iget-object v1, p0, Lcn/qqtheme/framework/adapter/do;->for:Ljava/lang/String;

    invoke-static {v1, p1}, Lcn/qqtheme/framework/util/do;->static(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 37
    :cond_a
    iget-object v1, p0, Lcn/qqtheme/framework/adapter/do;->for:Ljava/lang/String;

    invoke-static {v1, p1}, Lcn/qqtheme/framework/util/do;->default(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_e

    .line 38
    array-length v1, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_e

    .line 39
    aget-object v6, p1, v5

    .line 40
    iget-boolean v7, p0, Lcn/qqtheme/framework/adapter/do;->goto:Z

    if-nez v7, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 41
    :cond_b
    new-instance v7, Landroid/support/v4/qa0;

    invoke-direct {v7}, Landroid/support/v4/qa0;-><init>()V

    .line 42
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    .line 43
    invoke-virtual {v7, v8}, Landroid/support/v4/qa0;->setDirectory(Z)V

    if-eqz v8, :cond_c

    .line 44
    iget-object v8, p0, Lcn/qqtheme/framework/adapter/do;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/support/v4/qa0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {v7, v3, v4}, Landroid/support/v4/qa0;->setSize(J)V

    goto :goto_2

    .line 46
    :cond_c
    iget-object v8, p0, Lcn/qqtheme/framework/adapter/do;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/support/v4/qa0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/qa0;->setSize(J)V

    .line 48
    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/qa0;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/support/v4/qa0;->setPath(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    :cond_e
    iget-object p1, p0, Lcn/qqtheme/framework/adapter/do;->do:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object p1, p0, Lcn/qqtheme/framework/adapter/do;->do:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method

.method public final(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/qqtheme/framework/adapter/do;->try:Z

    return-void
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/qqtheme/framework/adapter/do;->try:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/qqtheme/framework/adapter/do;->if(I)Landroid/support/v4/qa0;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "ResourceType"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060114

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 4
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    iget v2, p0, Lcn/qqtheme/framework/adapter/do;->this:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/support/v4/ur;->interface(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    .line 6
    instance-of p3, p3, Landroid/widget/AbsListView;

    if-eqz p3, :cond_0

    .line 7
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p3, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const/high16 p3, 0x40a00000    # 5.0f

    .line 9
    invoke-static {v0, p3}, Landroid/support/v4/ur;->interface(Landroid/content/Context;F)I

    move-result p3

    .line 10
    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f0600fd

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 12
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41f00000    # 30.0f

    .line 13
    invoke-static {v0, v2}, Landroid/support/v4/ur;->interface(Landroid/content/Context;F)I

    move-result v2

    .line 14
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x108004b

    .line 15
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 19
    invoke-static {v0, v3}, Landroid/support/v4/ur;->interface(Landroid/content/Context;F)I

    move-result v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 20
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x800013

    .line 21
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    new-instance v3, Lcn/qqtheme/framework/adapter/do$if;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcn/qqtheme/framework/adapter/do$if;-><init>(Lcn/qqtheme/framework/adapter/do$do;)V

    .line 26
    iput-object p3, v3, Lcn/qqtheme/framework/adapter/do$if;->do:Landroid/widget/ImageView;

    .line 27
    iput-object v2, v3, Lcn/qqtheme/framework/adapter/do$if;->if:Landroid/widget/TextView;

    .line 28
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcn/qqtheme/framework/adapter/do$if;

    .line 30
    :goto_1
    iget-object p3, p0, Lcn/qqtheme/framework/adapter/do;->do:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/qa0;

    .line 31
    iget-object p3, v3, Lcn/qqtheme/framework/adapter/do$if;->do:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/support/v4/qa0;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object p3, v3, Lcn/qqtheme/framework/adapter/do$if;->if:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/support/v4/qa0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, v3, Lcn/qqtheme/framework/adapter/do$if;->if:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method

.method public goto()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->break:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->catch:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->class:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 11
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 14
    :cond_2
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->const:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 15
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-void
.end method

.method public if(I)Landroid/support/v4/qa0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/adapter/do;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/qa0;

    return-object p1
.end method

.method public import(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/adapter/do;->catch:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/qqtheme/framework/adapter/do;->goto:Z

    return v0
.end method

.method public super(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/qqtheme/framework/adapter/do;->goto:Z

    return-void
.end method

.method public this([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/adapter/do;->new:[Ljava/lang/String;

    return-void
.end method

.method public throw(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/qqtheme/framework/adapter/do;->case:Z

    return-void
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/qqtheme/framework/adapter/do;->case:Z

    return v0
.end method

.method public while(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/qqtheme/framework/adapter/do;->else:Z

    return-void
.end method
