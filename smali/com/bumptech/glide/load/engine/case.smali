.class public abstract Lcom/bumptech/glide/load/engine/case;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Lcom/bumptech/glide/load/engine/case;

.field public static final for:Lcom/bumptech/glide/load/engine/case;

.field public static final if:Lcom/bumptech/glide/load/engine/case;

.field public static final new:Lcom/bumptech/glide/load/engine/case;

.field public static final try:Lcom/bumptech/glide/load/engine/case;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/case$do;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/case$do;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/case;->do:Lcom/bumptech/glide/load/engine/case;

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/case$if;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/case$if;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/case;->if:Lcom/bumptech/glide/load/engine/case;

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/engine/case$for;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/case$for;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/case;->for:Lcom/bumptech/glide/load/engine/case;

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/case$new;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/case$new;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/case$try;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/case$try;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/case;->try:Lcom/bumptech/glide/load/engine/case;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do()Z
.end method

.method public abstract for(Lcom/bumptech/glide/load/do;)Z
.end method

.method public abstract if()Z
.end method

.method public abstract new(ZLcom/bumptech/glide/load/do;Lcom/bumptech/glide/load/for;)Z
.end method
