.class Lfreemarker/core/u1$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/u1;->iterator()Lfreemarker/template/TemplateModelIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lfreemarker/core/u1;

.field public do:Z

.field public for:I

.field public if:I

.field public new:J

.field public try:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lfreemarker/core/u1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lfreemarker/core/u1$do;->case:Lfreemarker/core/u1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lfreemarker/core/u1$do;->if:I

    .line 3
    invoke-virtual {p1}, Lfreemarker/core/l3;->getBegining()I

    move-result p1

    iput p1, p0, Lfreemarker/core/u1$do;->for:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/u1$do;->do:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lfreemarker/core/u1$do;->if:I

    const-wide/16 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/core/u1$do;->try:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/u1$do;->try:Ljava/math/BigInteger;

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v5, p0, Lfreemarker/core/u1$do;->new:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    add-long/2addr v5, v3

    .line 5
    iput-wide v5, p0, Lfreemarker/core/u1$do;->new:J

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lfreemarker/core/u1$do;->if:I

    .line 7
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/u1$do;->try:Ljava/math/BigInteger;

    .line 8
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/u1$do;->try:Ljava/math/BigInteger;

    goto :goto_0

    .line 9
    :cond_2
    iget v0, p0, Lfreemarker/core/u1$do;->for:I

    const v5, 0x7fffffff

    if-ge v0, v5, :cond_3

    add-int/2addr v0, v2

    .line 10
    iput v0, p0, Lfreemarker/core/u1$do;->for:I

    goto :goto_0

    .line 11
    :cond_3
    iput v1, p0, Lfreemarker/core/u1$do;->if:I

    int-to-long v5, v0

    add-long/2addr v5, v3

    .line 12
    iput-wide v5, p0, Lfreemarker/core/u1$do;->new:J

    .line 13
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lfreemarker/core/u1$do;->do:Z

    .line 14
    iget v0, p0, Lfreemarker/core/u1$do;->if:I

    if-ne v0, v2, :cond_5

    new-instance v0, Landroid/support/v4/az1;

    iget v1, p0, Lfreemarker/core/u1$do;->for:I

    invoke-direct {v0, v1}, Landroid/support/v4/az1;-><init>(I)V

    goto :goto_1

    :cond_5
    if-ne v0, v1, :cond_6

    new-instance v0, Landroid/support/v4/az1;

    iget-wide v1, p0, Lfreemarker/core/u1$do;->new:J

    invoke-direct {v0, v1, v2}, Landroid/support/v4/az1;-><init>(J)V

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/support/v4/az1;

    iget-object v1, p0, Lfreemarker/core/u1$do;->try:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Landroid/support/v4/az1;-><init>(Ljava/lang/Number;)V

    :goto_1
    return-object v0
.end method
