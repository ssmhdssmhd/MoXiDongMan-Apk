.class final Lcom/google/protobuf/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/h1$do;
    }
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/p0;

.field private final for:[I

.field private final if:Z

.field private final new:[Lcom/google/protobuf/d;

.field private final try:Lcom/google/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/p0;Z[I[Lcom/google/protobuf/d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/h1;->do:Lcom/google/protobuf/p0;

    .line 3
    iput-boolean p2, p0, Lcom/google/protobuf/h1;->if:Z

    .line 4
    iput-object p3, p0, Lcom/google/protobuf/h1;->for:[I

    .line 5
    iput-object p4, p0, Lcom/google/protobuf/h1;->new:[Lcom/google/protobuf/d;

    const-string p1, "defaultInstance"

    .line 6
    invoke-static {p5, p1}, Lcom/google/protobuf/Internal;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MessageLite;

    iput-object p1, p0, Lcom/google/protobuf/h1;->try:Lcom/google/protobuf/MessageLite;

    return-void
.end method

.method public static for()Lcom/google/protobuf/h1$do;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/h1$do;

    invoke-direct {v0}, Lcom/google/protobuf/h1$do;-><init>()V

    return-object v0
.end method

.method public static new(I)Lcom/google/protobuf/h1$do;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/h1$do;

    invoke-direct {v0, p0}, Lcom/google/protobuf/h1$do;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public do()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h1;->for:[I

    return-object v0
.end method

.method public getDefaultInstance()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h1;->try:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h1;->do:Lcom/google/protobuf/p0;

    return-object v0
.end method

.method public if()[Lcom/google/protobuf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h1;->new:[Lcom/google/protobuf/d;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/h1;->if:Z

    return v0
.end method
