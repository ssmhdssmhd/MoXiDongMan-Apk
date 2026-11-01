.class final Lrx/internal/operators/n1$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# static fields
.field public static final do:Lrx/internal/operators/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/n1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/operators/n1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/n1;-><init>(Z)V

    sput-object v0, Lrx/internal/operators/n1$do;->do:Lrx/internal/operators/n1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
