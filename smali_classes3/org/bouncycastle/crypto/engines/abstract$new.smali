.class abstract Lorg/bouncycastle/crypto/engines/abstract$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "new"
.end annotation


# instance fields
.field public final do:[J

.field public final if:[J


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/abstract$new;->if:[J

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/abstract$new;->do:[J

    return-void
.end method


# virtual methods
.method public abstract do([J[J)V
.end method

.method public abstract if([J[J)V
.end method
