.class final Lrx/internal/operators/f1$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static final do:Lrx/internal/operators/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/f1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/f1;

    invoke-direct {v0}, Lrx/internal/operators/f1;-><init>()V

    sput-object v0, Lrx/internal/operators/f1$if;->do:Lrx/internal/operators/f1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
