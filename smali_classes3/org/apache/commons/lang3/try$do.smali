.class final Lorg/apache/commons/lang3/try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/try;->finally(Ljava/lang/Class;Lorg/apache/commons/lang3/try$for;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/try$do;->do:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/d11;

    iget-object v1, p0, Lorg/apache/commons/lang3/try$do;->do:Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroid/support/v4/d11;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v1, Lorg/apache/commons/lang3/try$do$do;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/lang3/try$do$do;-><init>(Lorg/apache/commons/lang3/try$do;Landroid/support/v4/d11;)V

    return-object v1
.end method
