.class public Lcom/wsw/cospa/utils/DialogTool$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/DialogTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field public case:I

.field public do:Ljava/lang/String;

.field public for:Z

.field public if:Ljava/lang/String;

.field public new:Lcom/wsw/cospa/utils/DialogTool$if;

.field public try:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->for:Z

    .line 3
    sget-object v0, Lcom/wsw/cospa/utils/DialogTool$if;->HORIZONTAL:Lcom/wsw/cospa/utils/DialogTool$if;

    iput-object v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->new:Lcom/wsw/cospa/utils/DialogTool$if;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->try:I

    .line 5
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->case:I

    .line 6
    iput-object p1, p0, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$if;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->for:Z

    .line 10
    sget-object v0, Lcom/wsw/cospa/utils/DialogTool$if;->HORIZONTAL:Lcom/wsw/cospa/utils/DialogTool$if;

    iput-object v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->new:Lcom/wsw/cospa/utils/DialogTool$if;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->try:I

    .line 12
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->case:I

    .line 13
    iput-object p1, p0, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/wsw/cospa/utils/DialogTool$try;->new:Lcom/wsw/cospa/utils/DialogTool$if;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$if;I)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->for:Z

    .line 18
    sget-object v0, Lcom/wsw/cospa/utils/DialogTool$if;->HORIZONTAL:Lcom/wsw/cospa/utils/DialogTool$if;

    iput-object v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->new:Lcom/wsw/cospa/utils/DialogTool$if;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->try:I

    .line 20
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->case:I

    .line 21
    iput-object p1, p0, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/wsw/cospa/utils/DialogTool$try;->new:Lcom/wsw/cospa/utils/DialogTool$if;

    .line 24
    iput p4, p0, Lcom/wsw/cospa/utils/DialogTool$try;->try:I

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    const v0, 0x7f0801dc

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->case:I

    return-void
.end method

.method public for(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/wsw/cospa/utils/DialogTool$try;->case:I

    if-lez p1, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public if(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/utils/DialogTool$try;->for:Z

    return-void
.end method

.method public new(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/DialogTool$try;->case:I

    return-void
.end method

.method public try()V
    .locals 1

    const v0, 0x7f0801df

    .line 1
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$try;->case:I

    return-void
.end method
