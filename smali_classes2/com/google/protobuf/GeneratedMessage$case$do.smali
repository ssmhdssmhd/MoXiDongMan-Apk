.class Lcom/google/protobuf/GeneratedMessage$case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage$case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/protobuf/GeneratedMessage$case;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$case$do;->do:Lcom/google/protobuf/GeneratedMessage$case;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$case;Lcom/google/protobuf/GeneratedMessage$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$case$do;-><init>(Lcom/google/protobuf/GeneratedMessage$case;)V

    return-void
.end method


# virtual methods
.method public markDirty()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$case$do;->do:Lcom/google/protobuf/GeneratedMessage$case;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage$case;->onChanged()V

    return-void
.end method
