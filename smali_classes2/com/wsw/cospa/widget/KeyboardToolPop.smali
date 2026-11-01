.class public Lcom/wsw/cospa/widget/KeyboardToolPop;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;,
        Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;

.field private keyHelp:[Ljava/lang/String;

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private onClickListener:Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;)V
    .locals 48

    move-object/from16 v1, p0

    const/4 v0, -0x1

    const/4 v2, -0x2

    .line 1
    invoke-direct {v1, v0, v2}, Landroid/widget/PopupWindow;-><init>(II)V

    const-string v3, "@Header:"

    const-string v4, "@Header:{Referer:host}"

    const-string v5, "@Header:{Referer:thisPage}"

    const-string v6, "@Header:{Referer:prePage}"

    const-string v7, "@put:"

    const-string v8, "@get:"

    const-string v9, "@js"

    const-string v10, "searchPage"

    const-string v11, "searchKey"

    const-string v12, "http://"

    const-string v13, "https://"

    const-string v14, "www."

    const-string v15, "m."

    const-string v16, ".com"

    const-string v17, ".net"

    const-string v18, ".cn"

    const-string v19, "result.match"

    const-string v20, "replace"

    const-string v21, "@"

    const-string v22, "href"

    const-string v23, "src"

    const-string v24, "textNodes"

    const-string v25, "xpath"

    const-string v26, "json"

    const-string v27, "css"

    const-string v28, "id"

    const-string v29, "class"

    const-string v30, "tag"

    const-string v31, "children"

    const-string v32, "|"

    const-string v33, "%"

    const-string v34, "&"

    const-string v35, "/"

    const-string v36, "\\"

    const-string v37, ":"

    const-string v38, "("

    const-string v39, ")"

    const-string v40, "["

    const-string v41, "]"

    const-string v42, "{"

    const-string v43, "}"

    const-string v44, "$"

    const-string v45, "#"

    const-string v46, "!"

    const-string v47, "."

    .line 2
    filled-new-array/range {v3 .. v47}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->keyHelp:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->keys:Ljava/util/List;

    move-object/from16 v0, p2

    .line 4
    iput-object v0, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->onClickListener:Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00fa

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09035a

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 12
    sget-object v0, Landroid/support/v4/wq;->public:Ljava/lang/String;

    .line 13
    new-instance v3, Ljava/io/File;

    const-string v4, "edit.txt"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    :try_start_0
    invoke-static {v3}, Lcom/wsw/cospa/utils/throws;->for(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\\n"

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 19
    iget-object v6, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->keys:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->keyHelp:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->keys:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->keyHelp:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->keys:Ljava/util/List;

    .line 23
    :cond_2
    :goto_1
    new-instance v0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;-><init>(Lcom/wsw/cospa/widget/KeyboardToolPop;)V

    iput-object v0, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->adapter:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;

    .line 24
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 25
    iget-object v2, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    iget-object v0, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Lcom/wsw/cospa/widget/KeyboardToolPop;->adapter:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/KeyboardToolPop;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/KeyboardToolPop;->keys:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/KeyboardToolPop;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/KeyboardToolPop;->getSelectorDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/KeyboardToolPop;)Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/KeyboardToolPop;->onClickListener:Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/widget/KeyboardToolPop;->lambda$initDefault$0(Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private getSelectorDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f040529

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private static synthetic lambda$initDefault$0(Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;->click(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initDefault(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    new-instance v2, Landroid/support/v4/or0;

    invoke-direct {v2, p3}, Landroid/support/v4/or0;-><init>(Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
