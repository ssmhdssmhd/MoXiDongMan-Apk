.class final Lcom/google/common/base/else$new;
.super Lcom/google/common/base/else;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/else<",
        "TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/common/base/else$new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/else$new<",
            "*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/base/else$new;

    invoke-direct {v0}, Lcom/google/common/base/else$new;-><init>()V

    sput-object v0, Lcom/google/common/base/else$new;->INSTANCE:Lcom/google/common/base/else$new;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/else;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/else$new;->INSTANCE:Lcom/google/common/base/else$new;

    return-object v0
.end method


# virtual methods
.method public doAndThen(Lcom/google/common/base/else;)Lcom/google/common/base/else;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/else<",
            "TT;TS;>;)",
            "Lcom/google/common/base/else<",
            "TT;TS;>;"
        }
    .end annotation

    const-string v0, "otherConverter"

    .line 1
    invoke-static {p1, v0}, Landroid/support/v4/af1;->strictfp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/else;

    return-object p1
.end method

.method public doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public reverse()Lcom/google/common/base/else$new;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/else$new<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic reverse()Lcom/google/common/base/else;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/base/else$new;->reverse()Lcom/google/common/base/else$new;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Converter.identity()"

    return-object v0
.end method
