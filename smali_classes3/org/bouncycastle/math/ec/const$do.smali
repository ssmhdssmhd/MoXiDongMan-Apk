.class final Lorg/bouncycastle/math/ec/const$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/const;->for(Lorg/bouncycastle/math/ec/new$if;[B)Lorg/bouncycastle/math/ec/new$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/bouncycastle/math/ec/new$if;

.field public final synthetic if:B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/new$if;B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/const$do;->do:Lorg/bouncycastle/math/ec/new$if;

    iput-byte p2, p0, Lorg/bouncycastle/math/ec/const$do;->if:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/math/ec/final;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/math/ec/final;

    invoke-direct {p1}, Lorg/bouncycastle/math/ec/final;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/const$do;->do:Lorg/bouncycastle/math/ec/new$if;

    iget-byte v1, p0, Lorg/bouncycastle/math/ec/const$do;->if:B

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/this;->case(Lorg/bouncycastle/math/ec/new$if;B)[Lorg/bouncycastle/math/ec/new$if;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/final;->if([Lorg/bouncycastle/math/ec/new$if;)V

    return-object p1
.end method
