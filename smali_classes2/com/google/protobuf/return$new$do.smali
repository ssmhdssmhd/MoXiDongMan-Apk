.class Lcom/google/protobuf/return$new$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/return$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final do:Lcom/google/protobuf/Descriptors$if;

.field public for:I

.field public final if:I

.field public new:Lcom/google/protobuf/return$new$if;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$if;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/return$new$do;->do:Lcom/google/protobuf/Descriptors$if;

    .line 3
    iput p2, p0, Lcom/google/protobuf/return$new$do;->if:I

    .line 4
    iput p2, p0, Lcom/google/protobuf/return$new$do;->for:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/return$new$do;->new:Lcom/google/protobuf/return$new$if;

    return-void
.end method
