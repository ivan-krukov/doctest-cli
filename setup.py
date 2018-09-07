import setuptools

with open('README.md', 'r') as fh:
    long_description = fh.read()

setuptools.setup(
    name='doctest-cli',
    version='0.0.2',
    author='Ivan Krukov',
    author_email='ivan.o.kryukov@gmail.com',
    description='Doctests for your shell',
    long_description=long_description,
    long_description_content_type='text/markdown',
    url='https://github.com/ivan-krukov/doctest-cli',
    packages=setuptools.find_packages(),
    scripts=['bin/doctest-cli'],
    classifiers=[
        "Programming Language :: Python",
        "License :: OSI Approved :: MIT License",
        "Operating System :: Unix",
    ],
)
