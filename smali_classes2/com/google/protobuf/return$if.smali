.class Lcom/google/protobuf/return$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/return;->else(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/protobuf/Descriptors$else;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/return$if;->do:Lcom/google/protobuf/Descriptors$else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/return$if;->do:Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->final()Lcom/google/protobuf/Descriptors$try;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$try;->else(I)Lcom/google/protobuf/Descriptors$case;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
