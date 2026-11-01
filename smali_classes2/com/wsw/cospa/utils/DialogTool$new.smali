.class public Lcom/wsw/cospa/utils/DialogTool$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/DialogTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# instance fields
.field public case:I

.field public do:Ljava/lang/String;

.field public else:I

.field public for:Ljava/lang/String;

.field public goto:I

.field public if:Ljava/lang/String;

.field public new:I

.field public try:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$new;->new:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$new;->try:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$new;->case:I

    .line 5
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$new;->else:I

    .line 6
    iput v0, p0, Lcom/wsw/cospa/utils/DialogTool$new;->goto:I

    .line 7
    iput-object p1, p0, Lcom/wsw/cospa/utils/DialogTool$new;->do:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/wsw/cospa/utils/DialogTool$new;->if:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/wsw/cospa/utils/DialogTool$new;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/DialogTool$new;->goto:I

    return-void
.end method

.method public for(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/DialogTool$new;->new:I

    return-void
.end method

.method public if(FII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/DialogTool$new;->try:F

    .line 2
    iput p2, p0, Lcom/wsw/cospa/utils/DialogTool$new;->case:I

    .line 3
    iput p3, p0, Lcom/wsw/cospa/utils/DialogTool$new;->else:I

    return-void
.end method
