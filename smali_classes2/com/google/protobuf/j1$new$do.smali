.class public Lcom/google/protobuf/j1$new$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/j1$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private case:Lcom/google/protobuf/p1;

.field private do:Z

.field private for:Z

.field private if:Z

.field private new:Lcom/google/protobuf/j1$new$if;

.field private try:Lcom/google/protobuf/k1$if;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/protobuf/j1$new$do;->do:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/j1$new$do;->if:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/protobuf/j1$new$do;->for:Z

    .line 5
    sget-object v0, Lcom/google/protobuf/j1$new$if;->ALLOW_SINGULAR_OVERWRITES:Lcom/google/protobuf/j1$new$if;

    iput-object v0, p0, Lcom/google/protobuf/j1$new$do;->new:Lcom/google/protobuf/j1$new$if;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/j1$new$do;->try:Lcom/google/protobuf/k1$if;

    .line 7
    invoke-static {}, Lcom/google/protobuf/p1;->new()Lcom/google/protobuf/p1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/j1$new$do;->case:Lcom/google/protobuf/p1;

    return-void
.end method


# virtual methods
.method public case(Lcom/google/protobuf/p1;)Lcom/google/protobuf/j1$new$do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/j1$new$do;->case:Lcom/google/protobuf/p1;

    return-object p0
.end method

.method public do()Lcom/google/protobuf/j1$new;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/protobuf/j1$new;

    iget-object v1, p0, Lcom/google/protobuf/j1$new$do;->case:Lcom/google/protobuf/p1;

    iget-boolean v2, p0, Lcom/google/protobuf/j1$new$do;->do:Z

    iget-boolean v3, p0, Lcom/google/protobuf/j1$new$do;->if:Z

    iget-boolean v4, p0, Lcom/google/protobuf/j1$new$do;->for:Z

    iget-object v5, p0, Lcom/google/protobuf/j1$new$do;->new:Lcom/google/protobuf/j1$new$if;

    iget-object v6, p0, Lcom/google/protobuf/j1$new$do;->try:Lcom/google/protobuf/k1$if;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/j1$new;-><init>(Lcom/google/protobuf/p1;ZZZLcom/google/protobuf/j1$new$if;Lcom/google/protobuf/k1$if;Lcom/google/protobuf/j1$do;)V

    return-object v8
.end method

.method public for(Z)Lcom/google/protobuf/j1$new$do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/j1$new$do;->do:Z

    return-object p0
.end method

.method public if(Z)Lcom/google/protobuf/j1$new$do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/protobuf/j1$new$do;->for:Z

    return-object p0
.end method

.method public new(Lcom/google/protobuf/k1$if;)Lcom/google/protobuf/j1$new$do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/j1$new$do;->try:Lcom/google/protobuf/k1$if;

    return-object p0
.end method

.method public try(Lcom/google/protobuf/j1$new$if;)Lcom/google/protobuf/j1$new$do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/j1$new$do;->new:Lcom/google/protobuf/j1$new$if;

    return-object p0
.end method
