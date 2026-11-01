.class Lcom/wsw/cospa/activity/AddBookShelfActivity$for;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AddBookShelfActivity;->case()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Lcom/wsw/cospa/bean/ComicShelfBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AddBookShelfActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->default(Lcom/wsw/cospa/activity/AddBookShelfActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->throws(Lcom/wsw/cospa/activity/AddBookShelfActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->throws(Lcom/wsw/cospa/activity/AddBookShelfActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->i(Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->finally(Lcom/wsw/cospa/activity/AddBookShelfActivity;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->etBookshelfName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-static {p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->extends(Lcom/wsw/cospa/activity/AddBookShelfActivity;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->extends(Lcom/wsw/cospa/activity/AddBookShelfActivity;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getViewId()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->extends(Lcom/wsw/cospa/activity/AddBookShelfActivity;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getSortId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbListMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbGirdMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbGirdMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbListMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    if-ne v0, v2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortTime:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortDrag:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortTime:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortDrag:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;->do(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
