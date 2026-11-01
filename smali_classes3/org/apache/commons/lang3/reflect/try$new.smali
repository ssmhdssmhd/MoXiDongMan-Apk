.class public Lorg/apache/commons/lang3/reflect/try$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/reflect/WildcardType;",
        ">;"
    }
.end annotation


# instance fields
.field private do:[Ljava/lang/reflect/Type;

.field private if:[Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/lang3/reflect/try$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/lang3/reflect/try$new;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/try$new;->do()Ljava/lang/reflect/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method public do()Ljava/lang/reflect/WildcardType;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/reflect/try$try;

    iget-object v1, p0, Lorg/apache/commons/lang3/reflect/try$new;->do:[Ljava/lang/reflect/Type;

    iget-object v2, p0, Lorg/apache/commons/lang3/reflect/try$new;->if:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/reflect/try$try;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/try$do;)V

    return-object v0
.end method

.method public varargs for([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/try$new;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/try$new;->do:[Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public varargs if([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/try$new;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/try$new;->if:[Ljava/lang/reflect/Type;

    return-object p0
.end method
