.class Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/FileSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private case:Landroid/widget/TextView;

.field private do:Landroid/widget/ImageView;

.field private else:Landroid/widget/CheckBox;

.field private for:Landroid/widget/ImageView;

.field private if:Landroid/widget/ImageView;

.field private new:Landroid/widget/TextView;

.field private try:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901b9

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do:Landroid/widget/ImageView;

    const v0, 0x7f0901b7

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->if:Landroid/widget/ImageView;

    const v0, 0x7f0901b8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for:Landroid/widget/ImageView;

    const v0, 0x7f0901bd

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->else:Landroid/widget/CheckBox;

    const v0, 0x7f0901bf

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->new:Landroid/widget/TextView;

    const v0, 0x7f0901c0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->try:Landroid/widget/TextView;

    const v0, 0x7f0901be

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->case:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->try:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->else:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static synthetic else(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->case:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic for(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->do:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->new:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic new(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->if:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic try(Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;->for:Landroid/widget/ImageView;

    return-object p0
.end method
