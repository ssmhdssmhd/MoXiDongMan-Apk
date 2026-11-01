.class final Lrx/internal/operators/v0$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static final do:Lrx/internal/operators/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/v0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/v0;

    invoke-direct {v0}, Lrx/internal/operators/v0;-><init>()V

    sput-object v0, Lrx/internal/operators/v0$if;->do:Lrx/internal/operators/v0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
