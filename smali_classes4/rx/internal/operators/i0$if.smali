.class final Lrx/internal/operators/i0$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static final do:Lrx/internal/operators/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/i0<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/operators/i0;

    invoke-static {}, Lrx/internal/util/this;->for()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/operators/i0;-><init>(Lrx/functions/Func1;)V

    sput-object v0, Lrx/internal/operators/i0$if;->do:Lrx/internal/operators/i0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
