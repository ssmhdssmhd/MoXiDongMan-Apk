.class public final Lrx/subjects/try$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final for:[Lrx/subjects/try$for;

.field public static final new:Lrx/subjects/try$if;

.field public static final try:Lrx/subjects/try$if;


# instance fields
.field public final do:Z

.field public final if:[Lrx/subjects/try$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lrx/subjects/try$for;

    .line 1
    sput-object v1, Lrx/subjects/try$if;->for:[Lrx/subjects/try$for;

    .line 2
    new-instance v2, Lrx/subjects/try$if;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lrx/subjects/try$if;-><init>(Z[Lrx/subjects/try$for;)V

    sput-object v2, Lrx/subjects/try$if;->new:Lrx/subjects/try$if;

    .line 3
    new-instance v2, Lrx/subjects/try$if;

    invoke-direct {v2, v0, v1}, Lrx/subjects/try$if;-><init>(Z[Lrx/subjects/try$for;)V

    sput-object v2, Lrx/subjects/try$if;->try:Lrx/subjects/try$if;

    return-void
.end method

.method public constructor <init>(Z[Lrx/subjects/try$for;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lrx/subjects/try$if;->do:Z

    .line 3
    iput-object p2, p0, Lrx/subjects/try$if;->if:[Lrx/subjects/try$for;

    return-void
.end method


# virtual methods
.method public do(Lrx/subjects/try$for;)Lrx/subjects/try$if;
    .locals 4

    .line 1
    iget-object v0, p0, Lrx/subjects/try$if;->if:[Lrx/subjects/try$for;

    .line 2
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    .line 3
    new-array v2, v2, [Lrx/subjects/try$for;

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    aput-object p1, v2, v1

    .line 6
    new-instance p1, Lrx/subjects/try$if;

    iget-boolean v0, p0, Lrx/subjects/try$if;->do:Z

    invoke-direct {p1, v0, v2}, Lrx/subjects/try$if;-><init>(Z[Lrx/subjects/try$for;)V

    return-object p1
.end method

.method public if(Lrx/subjects/try$for;)Lrx/subjects/try$if;
    .locals 9

    .line 1
    iget-object v0, p0, Lrx/subjects/try$if;->if:[Lrx/subjects/try$for;

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 3
    aget-object v2, v0, v3

    if-ne v2, p1, :cond_0

    .line 4
    sget-object p1, Lrx/subjects/try$if;->try:Lrx/subjects/try$if;

    return-object p1

    :cond_0
    if-nez v1, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v2, v1, -0x1

    .line 5
    new-array v4, v2, [Lrx/subjects/try$for;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v1, :cond_4

    .line 6
    aget-object v7, v0, v5

    if-eq v7, p1, :cond_3

    if-ne v6, v2, :cond_2

    return-object p0

    :cond_2
    add-int/lit8 v8, v6, 0x1

    .line 7
    aput-object v7, v4, v6

    move v6, v8

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    .line 8
    sget-object p1, Lrx/subjects/try$if;->try:Lrx/subjects/try$if;

    return-object p1

    :cond_5
    if-ge v6, v2, :cond_6

    .line 9
    new-array p1, v6, [Lrx/subjects/try$for;

    .line 10
    invoke-static {v4, v3, p1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, p1

    .line 11
    :cond_6
    new-instance p1, Lrx/subjects/try$if;

    iget-boolean v0, p0, Lrx/subjects/try$if;->do:Z

    invoke-direct {p1, v0, v4}, Lrx/subjects/try$if;-><init>(Z[Lrx/subjects/try$for;)V

    return-object p1
.end method
