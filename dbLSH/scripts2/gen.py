dataset_infos=['imagenet-clip-512-normalized', 'landmark-dino-768-cosine', 'simplewiki-openai-3072-normalized', 'celeba-resnet-2048-cosine', 'gooaq-distilroberta-768-normalized', 'landmark-nomic-768-normalized', 'yandex-200-cosine', 'agnews-mxbai-1024-euclidean', 'arxiv-nomic-768-normalized', 'llama-128-ip', 'yi-128-ip', 'yahoo-minilm-384-normalized', 'laion-clip-512-normalized', 'coco-nomic-768-normalized', 'codesearchnet-jina-768-cosine', 'ccnews-nomic-768-normalized']

final_str=''

with open("100-template.sh", "r", encoding="utf-8") as f:
    data = f.read()
    for i in range(len(dataset_infos)):
        with open("100-"+str(i)+".sh", "w", encoding="utf-8") as f:
            text=data+''
            text=text.replace('DATASET-NAME',dataset_infos[i])
            f.write(text)
            final_str=final_str+"100-"+str(i)+".sh > "+"100-"+str(i)+".txt & "
print(final_str)
