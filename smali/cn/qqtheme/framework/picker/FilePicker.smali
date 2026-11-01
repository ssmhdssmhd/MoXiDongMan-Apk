.class public Lcn/qqtheme/framework/picker/FilePicker;
.super Lcn/qqtheme/framework/popup/if;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/qqtheme/framework/picker/FilePicker$OnFilePickListener;,
        Lcn/qqtheme/framework/picker/FilePicker$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/qqtheme/framework/popup/if<",
        "Landroid/widget/LinearLayout;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1


# instance fields
.field private a:I

.field private b:Ljava/lang/CharSequence;

.field private implements:Lcn/qqtheme/framework/adapter/new;

.field private instanceof:Landroid/widget/TextView;

.field private protected:Ljava/lang/String;

.field private synchronized:Lcn/qqtheme/framework/picker/FilePicker$OnFilePickListener;

.field private transient:Lcn/qqtheme/framework/adapter/for;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/qqtheme/framework/popup/if;-><init>(Landroid/app/Activity;)V

    .line 2
    new-instance v0, Lcn/qqtheme/framework/adapter/for;

    invoke-direct {v0}, Lcn/qqtheme/framework/adapter/for;-><init>()V

    iput-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    .line 3
    new-instance v0, Lcn/qqtheme/framework/adapter/new;

    invoke-direct {v0}, Lcn/qqtheme/framework/adapter/new;-><init>()V

    iput-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->implements:Lcn/qqtheme/framework/adapter/new;

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4e2d\u6587"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<\u7a7a>"

    goto :goto_0

    :cond_0
    const-string v0, "<Empty>"

    :goto_0
    iput-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->b:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcn/qqtheme/framework/popup/do;->static(Z)V

    .line 6
    :try_start_0
    invoke-static {}, Lcn/qqtheme/framework/util/if;->new()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/qqtheme/framework/picker/FilePicker;->protected:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :catch_0
    invoke-static {p1}, Lcn/qqtheme/framework/util/if;->this(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->protected:Ljava/lang/String;

    .line 8
    :goto_1
    iput p2, p0, Lcn/qqtheme/framework/picker/FilePicker;->a:I

    .line 9
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/adapter/for;->final(Z)V

    .line 10
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {p1, v1}, Lcn/qqtheme/framework/adapter/for;->super(Z)V

    .line 11
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {p1, v1}, Lcn/qqtheme/framework/adapter/for;->throw(Z)V

    .line 12
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {p1, v1}, Lcn/qqtheme/framework/adapter/for;->while(Z)V

    return-void
.end method

.method private C(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcn/qqtheme/framework/picker/FilePicker;->implements:Lcn/qqtheme/framework/adapter/new;

    invoke-virtual {v1, v0}, Lcn/qqtheme/framework/adapter/new;->new(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->implements:Lcn/qqtheme/framework/adapter/new;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/new;->new(Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/for;->else(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {p1}, Lcn/qqtheme/framework/adapter/for;->getCount()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0}, Lcn/qqtheme/framework/adapter/for;->try()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0}, Lcn/qqtheme/framework/adapter/for;->case()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    const/4 v0, 0x1

    if-ge p1, v0, :cond_3

    const-string p1, "no files, or dir is empty"

    .line 8
    invoke-static {p0, p1}, Landroid/support/v4/uv0;->native(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->instanceof:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->instanceof:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "files or dirs count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/uv0;->native(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->instanceof:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public static synthetic w(Lcn/qqtheme/framework/picker/FilePicker;)Lcn/qqtheme/framework/adapter/new;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/qqtheme/framework/picker/FilePicker;->implements:Lcn/qqtheme/framework/adapter/new;

    return-object p0
.end method

.method public static synthetic x(Lcn/qqtheme/framework/picker/FilePicker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/qqtheme/framework/picker/FilePicker;->C(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()Lcn/qqtheme/framework/adapter/new;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->implements:Lcn/qqtheme/framework/adapter/new;

    return-object v0
.end method

.method public B()Landroid/widget/LinearLayout;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    new-instance v3, Landroid/widget/ListView;

    iget-object v4, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0x222223

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 8
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v1, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/qqtheme/framework/picker/FilePicker;->instanceof:Landroid/widget/TextView;

    .line 13
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 14
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 15
    iget-object v3, p0, Lcn/qqtheme/framework/picker/FilePicker;->instanceof:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v1, p0, Lcn/qqtheme/framework/picker/FilePicker;->instanceof:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 17
    iget-object v1, p0, Lcn/qqtheme/framework/picker/FilePicker;->instanceof:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v1, p0, Lcn/qqtheme/framework/picker/FilePicker;->instanceof:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public D([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/for;->this([Ljava/lang/String;)V

    return-void
.end method

.method public E(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->implements:Lcn/qqtheme/framework/adapter/new;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/new;->for(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public F(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public G(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/for;->break(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public H(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/for;->catch(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public I(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/for;->class(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public J(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/for;->const(I)V

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->protected:Ljava/lang/String;

    return-void
.end method

.method public L(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/for;->super(Z)V

    return-void
.end method

.method public M(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/for;->throw(Z)V

    return-void
.end method

.method public N(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/for;->while(Z)V

    return-void
.end method

.method public O(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/adapter/for;->import(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public do()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/qqtheme/framework/popup/do;->do()V

    return-void
.end method

.method public import()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/lit8 v0, v1, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcn/qqtheme/framework/popup/if;->c(Z)V

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/qqtheme/framework/popup/if;->i(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/qqtheme/framework/popup/if;->i(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {p1, p3}, Lcn/qqtheme/framework/adapter/for;->if(I)Landroid/support/v4/qa0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/qa0;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/qa0;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/qqtheme/framework/picker/FilePicker;->C(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/qa0;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget p2, p0, Lcn/qqtheme/framework/picker/FilePicker;->a:I

    if-nez p2, :cond_1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not directory: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/uv0;->throws(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcn/qqtheme/framework/picker/FilePicker;->do()V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "picked path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/uv0;->new(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcn/qqtheme/framework/picker/FilePicker;->synchronized:Lcn/qqtheme/framework/picker/FilePicker$OnFilePickListener;

    if-eqz p2, :cond_2

    .line 10
    invoke-interface {p2, p1}, Lcn/qqtheme/framework/picker/FilePicker$OnFilePickListener;->onFilePicked(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnFilePickListener(Lcn/qqtheme/framework/picker/FilePicker$OnFilePickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->synchronized:Lcn/qqtheme/framework/picker/FilePicker$OnFilePickListener;

    return-void
.end method

.method public bridge synthetic strictfp()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/qqtheme/framework/picker/FilePicker;->B()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public transient()V
    .locals 3

    .line 1
    iget v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "pick file canceled"

    .line 2
    invoke-static {v0}, Landroid/support/v4/uv0;->public(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0}, Lcn/qqtheme/framework/adapter/for;->do()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "picked directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/uv0;->new(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcn/qqtheme/framework/picker/FilePicker;->synchronized:Lcn/qqtheme/framework/picker/FilePicker$OnFilePickListener;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, v0}, Lcn/qqtheme/framework/picker/FilePicker$OnFilePickListener;->onFilePicked(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public volatile()Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x222223

    .line 6
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 8
    new-instance v1, Lcn/qqtheme/framework/widget/HorizontalListView;

    iget-object v3, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcn/qqtheme/framework/widget/HorizontalListView;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v3, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Landroid/support/v4/ur;->interface(Landroid/content/Context;F)I

    move-result v3

    .line 10
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/AdapterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v2, p0, Lcn/qqtheme/framework/picker/FilePicker;->implements:Lcn/qqtheme/framework/adapter/new;

    invoke-virtual {v1, v2}, Lcn/qqtheme/framework/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    new-instance v2, Lcn/qqtheme/framework/picker/FilePicker$do;

    invoke-direct {v2, p0}, Lcn/qqtheme/framework/picker/FilePicker$do;-><init>(Lcn/qqtheme/framework/picker/FilePicker;)V

    invoke-virtual {v1, v2}, Lcn/qqtheme/framework/widget/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public while(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/qqtheme/framework/picker/FilePicker;->protected:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/qqtheme/framework/picker/FilePicker;->C(Ljava/lang/String;)V

    return-void
.end method

.method public y()Lcn/qqtheme/framework/adapter/for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/picker/FilePicker;->transient:Lcn/qqtheme/framework/adapter/for;

    invoke-virtual {v0}, Lcn/qqtheme/framework/adapter/for;->do()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
