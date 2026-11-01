.class Lorg/bouncycastle/math/ec/if$try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/if$try;->case([Lorg/bouncycastle/math/ec/new;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:[J

.field public final synthetic if:I

.field public final synthetic new:[I

.field public final synthetic try:Lorg/bouncycastle/math/ec/if$try;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/if$try;II[J[I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/if$try$do;->try:Lorg/bouncycastle/math/ec/if$try;

    iput p2, p0, Lorg/bouncycastle/math/ec/if$try$do;->do:I

    iput p3, p0, Lorg/bouncycastle/math/ec/if$try$do;->if:I

    iput-object p4, p0, Lorg/bouncycastle/math/ec/if$try$do;->for:[J

    iput-object p5, p0, Lorg/bouncycastle/math/ec/if$try$do;->new:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/if$try$do;->do:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/new;
    .locals 14

    iget v0, p0, Lorg/bouncycastle/math/ec/if$try$do;->if:I

    invoke-static {v0}, Landroid/support/v4/q21;->throws(I)[J

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/math/ec/if$try$do;->if:I

    invoke-static {v1}, Landroid/support/v4/q21;->throws(I)[J

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/bouncycastle/math/ec/if$try$do;->do:I

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    const/4 v7, 0x0

    :goto_1
    iget v8, p0, Lorg/bouncycastle/math/ec/if$try$do;->if:I

    if-ge v7, v8, :cond_0

    aget-wide v9, v0, v7

    iget-object v11, p0, Lorg/bouncycastle/math/ec/if$try$do;->for:[J

    add-int v12, v4, v7

    aget-wide v12, v11, v12

    and-long/2addr v12, v5

    xor-long/2addr v9, v12

    aput-wide v9, v0, v7

    aget-wide v9, v1, v7

    add-int/2addr v8, v4

    add-int/2addr v8, v7

    aget-wide v12, v11, v8

    and-long/2addr v12, v5

    xor-long/2addr v9, v12

    aput-wide v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/math/ec/if$try$do;->try:Lorg/bouncycastle/math/ec/if$try;

    new-instance v3, Lorg/bouncycastle/math/ec/for$for;

    invoke-static {p1}, Lorg/bouncycastle/math/ec/if$try;->b(Lorg/bouncycastle/math/ec/if$try;)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/math/ec/if$try$do;->new:[I

    new-instance v6, Lorg/bouncycastle/math/ec/case;

    invoke-direct {v6, v0}, Lorg/bouncycastle/math/ec/case;-><init>([J)V

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/math/ec/for$for;-><init>(I[ILorg/bouncycastle/math/ec/case;)V

    new-instance v0, Lorg/bouncycastle/math/ec/for$for;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/if$try$do;->try:Lorg/bouncycastle/math/ec/if$try;

    invoke-static {v4}, Lorg/bouncycastle/math/ec/if$try;->b(Lorg/bouncycastle/math/ec/if$try;)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/math/ec/if$try$do;->new:[I

    new-instance v6, Lorg/bouncycastle/math/ec/case;

    invoke-direct {v6, v1}, Lorg/bouncycastle/math/ec/case;-><init>([J)V

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/math/ec/for$for;-><init>(I[ILorg/bouncycastle/math/ec/case;)V

    invoke-virtual {p1, v3, v0, v2}, Lorg/bouncycastle/math/ec/if$try;->break(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method
