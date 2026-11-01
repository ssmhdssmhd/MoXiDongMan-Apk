.class public abstract Lcom/bumptech/glide/util/pool/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/pool/do$if;,
        Lcom/bumptech/glide/util/pool/do$for;
    }
.end annotation


# static fields
.field private static final do:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bumptech/glide/util/pool/do$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/util/pool/do;-><init>()V

    return-void
.end method

.method public static do()Lcom/bumptech/glide/util/pool/do;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/util/pool/do$for;

    invoke-direct {v0}, Lcom/bumptech/glide/util/pool/do$for;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract for()V
.end method

.method public abstract if(Z)V
.end method
